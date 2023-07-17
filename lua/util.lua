local binding = require("bindings").bindings
local val = {}

-- Load configuration and set up keybindings and Language Server Protocol (LSP) servers
--
-- This function loads the configuration, sets up keybindings, and configures the LSP servers.
-- It reads the keybindings from the `bindings.lua` file and applies them to the respective modes.
-- It also sets up the LSP servers specified in the `servers` array.
--
val.load_config = function()
  local lspconfig = require("lspconfig")
  local servers = require("custom.lsp").servers

  -- Load keybindings from bindings.lua and apply them to respective modes
  for mode, mode_bindings in pairs(binding) do
    val.map_keybindings(mode, mode_bindings)
  end

  -- Configure LSP servers
  for _, server in ipairs(servers) do
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig[server].setup({
      on_attach = require("lsp-format").on_attach,
      capabilities = capabilities
    })
  end
end

-- Apply keybindings to a specific mode
--
-- This function applies the specified keybindings to the given mode.
-- It takes a mode and a table of keybindings.
--
-- Parameters:
--   - mode (string): The mode to apply the keybindings to (e.g., "n" for normal mode, "i" for insert mode, "v" for visual mode).
--   - bindings (table): The table of keybindings to apply.
--
val.map_keybindings = function(mode, bindings)
  for key, mapping in pairs(bindings) do
    local cmd = mapping[1]
    local desc = mapping[2]
    local opts = mapping.opts

    local mapping_args = { key, cmd, desc }

    if opts then
      table.insert(mapping_args, opts)
    end

    -- Set the keybinding for the specified mode
    vim.keymap.set(mode, mapping_args[1], mapping_args[2], opts)
  end
end

val.generate_files = function(url)
  if not vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1] then
    local path = vim.fn.stdpath "config" .. "/lua/custom/"
    local input = "y"

    if next(vim.api.nvim_list_uis()) then
      input = vim.fn.input "Do you want to install example custom config? (Y/n): "
    end

    if input == "y" then
      print("Cloning default configuration...")
      vim.fn.system { "git", "clone", "--depth", "1", url, path }
      vim.fn.delete(path .. ".git", "rf")
      print("Cloned! Enjoy pim")
    end
  end
end

return val
