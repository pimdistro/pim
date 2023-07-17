vim.api.nvim_create_user_command("LspLinesToggle", function()
  local lsp_lines = require("lsp_lines")
  local diagnostic = require("vim.diagnostic")

  lsp_lines.toggle()

  local virtual_text_enabled = diagnostic.config().virtual_text

  if virtual_text_enabled then
    diagnostic.config({
      virtual_text = false,
    })
  else
    diagnostic.config({
      virtual_text = true,
    })
  end
end, {})
