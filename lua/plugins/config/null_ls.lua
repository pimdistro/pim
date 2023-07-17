-- Require the null-ls module
local ls = require("null-ls")

-- Create an autocommand group for LSP formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

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
      -- Clear any existing autocmds in the specified group and buffer
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })

      -- Create a new autocmd for BufWritePre event
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- Trigger the LSP formatting on buffer write
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
})
