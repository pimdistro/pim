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

-- Create mapping command for making comments
--
-- This function creates a mapping command for toggling comments in a code file.
-- It accepts an 'id' parameter indicating the type of comment to be toggled:
--   - "blockwise": Toggles comments in a block-wise manner.
--   - "linewise": Toggles comments in a line-wise manner.
--
-- Parameters:
--   - id (string): The type of comment to toggle. Must be either "blockwise" or "linewise".
--
-- Returns:
--   - command (string): The mapping command that can be used to toggle comments.
local comment = function(id)
  assert(
    id == "blockwise" or id == "linewise",
    "Invalid 'id' option. Must be either 'blockwise' or 'linewise'."
  )

  return '<cmd>lua require("Comment.api").toggle.' .. id .. '.current()<cr>'
end

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
    ["<F2>"] = rename_mapping,
    ["<leader>r"] = rename_mapping,
    ["<leader>e"] = { "<cmd>NvimTreeFocus<cr>", "Focus on nvim-tree (NvimTreeFocus)" },
    ["<leader>h"] = { "<cmd>15Term<cr>" },
    ["<leader>/"] = { comment("linewise") },
    ["<leader>?"] = { comment("blockwise") },
    ["<leader>ln"] = { "<cmd>set nu!<cr>" },
    ["<F3>"] = { "<cmd>LspLinesToggle<cr>", "Toggle the fancy error lines", noremap },

    -- buffer switching
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-k>"] = { "<C-w>k", "Window up" },
  },
  v = {
    ["<leader>r"] = rename_mapping,
    ["<F3>"] = { 'lua require("lsp_lines").toggle()' },
  },
}

-- Return the 'val' table as the module value
return val
