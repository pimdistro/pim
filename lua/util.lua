local binding = require("bindings").bindings
local servers = require("lsp").servers

local lspconfig = require("lspconfig")

local val = {}

val.load_config = function()
  -- bindings.lua, loads all bindings
  for mode, mode_bindings in pairs(binding) do
    val.map_keybindings(mode, mode_bindings)
  end

  for _, server in ipairs(servers) do
    lspconfig[server].setup({
      on_attach = require("lsp-format").on_attach
    })
  end
end

val.map_keybindings = function(mode, bindings)
  for key, mapping in pairs(bindings) do
    local cmd = mapping[1]
    local desc = mapping[2]
    local opts = mapping.opts

    local mapping_args = { key, cmd, desc }

    if opts then
      table.insert(mapping_args, opts)
    end

    vim.keymap.set(mode, mapping_args[1], mapping_args[2], opts)
  end
end

return val
