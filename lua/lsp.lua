-- Create a table to store the configuration values
local val = {}

-- Require the 'lspconfig' module
local lspconfig = require('lspconfig')

-- Specify the language servers to be used, that don't need configuration
val.servers = {
  "clangd",
  "marksman"
}

-- Setup the configuration for 'lua_ls' language server
lspconfig.lua_ls.setup {
  -- Attach a custom on_attach function for the language server
  on_attach = require("lsp-format").on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Specify the version of Lua being used (e.g., LuaJIT)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Specify global variables for diagnostics (e.g., 'vim', 'require')
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Include Neovim runtime files in the server's library
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        -- Disable sending telemetry data with a unique identifier
        enable = false,
      },
    },
  },
}

val.capabilities = vim.lsp.protocol.make_client_capabilities()
val.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
}

-- Return the 'val' table as the module value
return val
