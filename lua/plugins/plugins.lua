require("lazy").setup({
	-- onedark
	{
		"navarasu/onedark.nvim",
		config = function()
			local theme = require("onedark")

			theme.setup({
				style = "darker",
				transparent = true,
			})
			theme.load()
		end,
	},

	-- nvim-tree (https://github.com/nvim-tree/nvim-tree.lua)
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				disable_netrw = true,
				hijack_netrw = true,
				hijack_cursor = true,
				hijack_unnamed_buffer_when_opening = false,
				sync_root_with_cwd = true,
				update_focused_file = {
					enable = true,
					update_root = false,
				},
				view = {
					adaptive_size = false,
					side = "left",
					width = 30,
					preserve_window_proportions = true,
				},
				git = {
					enable = false,
					ignore = true,
				},
				filesystem_watchers = {
					enable = true,
				},
				actions = {
					open_file = {
						resize_window = true,
					},
				},
				renderer = {
					root_folder_label = false,
					highlight_git = false,
					highlight_opened_files = "none",

					indent_markers = {
						enable = false,
					},

					icons = {
						show = {
							file = true,
							folder = true,
							folder_arrow = true,
							git = false,
						},

						glyphs = {
							default = "󰈚",
							symlink = "",
							folder = {
								default = "",
								empty = "",
								empty_open = "",
								open = "",
								symlink = "",
								symlink_open = "",
								arrow_open = "",
								arrow_closed = "",
							},
							git = {
								unstaged = "✗",
								staged = "✓",
								unmerged = "",
								renamed = "➜",
								untracked = "★",
								deleted = "",
								ignored = "◌",
							},
						},
					},
				},
			})
		end,
	},
	"nvim-tree/nvim-web-devicons",

	-- Portable package manager for Neovim that runs everywhere Neovim runs.
	-- Easily install and manage LSP servers, DAP servers, linters, and formatters.
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	"neovim/nvim-lspconfig",

	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup({
				virtual_lines = false,
			})

			vim.diagnostic.config({
				virtual_text = false,
			})
		end,
	},

	-- which-key
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
})
