require("commands.lsp_lines")

local val = {}
local noremap = {
	noremap = false,
}

local rename_mapping = {
	'lua require("renamer").rename()',
	"rename",
	opts = {
		noremap = true,
		silent = true,
	},
}

val.bindings = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["<F2>"] = rename_mapping,
		["<leader>r"] = rename_mapping,
		["<leader>e"] = { "<cmd>NvimTreeFocus<cr>", "Focus on nvim-tree (NvimTreeFocus)" },
		["<F3>"] = { "<cmd>LspLinesToggle<cr>", "Toggle the fancy error lines", noremap },
	},
	v = {
		["<leader>r"] = rename_mapping,
		["<F3>"] = { 'lua require("lsp_lines").toggle()' },
	},
}

return val
