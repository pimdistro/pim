-- Require the "lsp_lines" module
require("commands.lsp_lines")

-- Create a table to store the key bindings
local val = {}

-- Assign key bindings to the 'val.bindings' table
val.bindings = {
  i = {
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-k>"] = { "<C-w>k", "Window up" },
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>e"] = { "<cmd>NvimTreeFocus<cr>", "Focus on nvim-tree (NvimTreeFocus)" },
    ["<leader>ln"] = { "<cmd>set nu!<cr>", "Toggle line numbers" },

    -- buffer switching
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-k>"] = { "<C-w>k", "Window up" },
  },
}

-- Return the 'val' table as the module value
return val
