-- Require the "lsp_lines" module
require("commands.lsp_lines")

-- Create a table to store the key bindings
local val = {}

-- Create a table for options with 'noremap' set to false
local noremap = {
  noremap = false,
}

-- Create a mapping for rename functionality
local rename_mapping = {
  '<cmd>lua require("renamer").rename()<cr>', -- Command to execute for renaming
  "rename",                                   -- Description for the mapping
  opts = {
    noremap = true,
    silent = true,
  },
}

-- Assign key bindings to the 'val.bindings' table
val.bindings = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<F2>"] = rename_mapping,
    ["<leader>r"] = rename_mapping,
    ["<leader>e"] = { "<cmd>NvimTreeFocus<cr>", "Focus on nvim-tree (NvimTreeFocus)" },
    ["<leader>h"] = { "<cmd>15Term<cr>" },
    ["<F3>"] = { "<cmd>LspLinesToggle<cr>", "Toggle the fancy error lines", noremap },
  },
  v = {
    ["<leader>r"] = rename_mapping,
    ["<F3>"] = { 'lua require("lsp_lines").toggle()' },
  },
}

-- Return the 'val' table as the module value
return val
