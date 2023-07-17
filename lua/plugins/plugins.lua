require("lazy").setup({
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup()
    end,
  },

  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  "numToStr/Comment.nvim",
  "SmiteshP/nvim-navic",

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

  -- nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

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



  "lukas-reineke/lsp-format.nvim",
  "nvim-lua/plenary.nvim",

  {
    "filipdutescu/renamer.nvim",
    config = function()
      require("renamer").setup()
    end,
  },

  require("plugins.config.bar"),
  require("plugins.config.null_ls"),
  require("plugins.config.cmp"),
  require("plugins.config.theme")
})
