require("lazy").setup({
  -- onedark
  {
    "B4mbus/oxocarbon-lua.nvim",
    -- "navarasu/onedark.nvim",
    config = function()
      vim.cmd.colorscheme 'oxocarbon-lua'
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.config.lualine")
    end,
  },

  -- nvterm
  {
    "vimlab/split-term.vim",
    config = function()
      vim.cmd("set splitbelow")
    end,
  },

  -- nvim-tree (https://github.com/nvim-tree/nvim-tree.lua)
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()
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

  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("plugins.config.null_ls")
    end,
  },

  "lukas-reineke/lsp-format.nvim",
  "nvim-lua/plenary.nvim",

  {
    "filipdutescu/renamer.nvim",
    config = function()
      require("renamer").setup()
    end,
  },

  -- which-key
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
})