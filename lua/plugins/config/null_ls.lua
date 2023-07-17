-- Require the null-ls module
return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local ls = require("null-ls")

      -- Create an autocommand group for LSP formatting
      local group = vim.api.nvim_create_augroup("LspFormatting", {})

      -- Configure code actions for refactoring
      ls.builtins.code_actions.refactoring.with({
        args = {}, -- Specify any additional arguments for the refactoring code actions
      })

      -- Setup null-ls
      require("null-ls").setup({
        -- Configure the on_attach function when the LSP client attaches to a buffer
        on_attach = function(client, bufnr)
          -- Check if the LSP client supports the "textDocument/formatting" method
          if client.supports_method("textDocument/formatting") then
            vim.keymap.set("n", "<Leader>f", function()
              vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
            end, { buffer = bufnr, desc = "[lsp] format" })

            -- format on save
            vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
            vim.api.nvim_create_autocmd(event, {
              buffer = bufnr,
              group = group,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr, async = async })
              end,
              desc = "[lsp] format on save",
            })
          end
        end,
      })
    end,
  },
}
