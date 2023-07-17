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

  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/vim-vsnip",
  "hrsh7th/cmp-vsnip",
  {
    "lukas-reineke/cmp-under-comparator",
    after = "nvim-cmp",
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sorting = {
          comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            require "cmp-under-comparator".under,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
          },
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "vsnip" },
          { name = "buffer" },
          { name = "nvim_lua" },
          { name = "path" },
        },
      })
    end,
  },

  "numToStr/Comment.nvim",

  {
    "B4mbus/oxocarbon-lua.nvim",
    config = function()
      vim.cmd.colorscheme 'oxocarbon-lua'
    end,
  },

  "SmiteshP/nvim-navic",
  {
    "utilyre/barbecue.nvim",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
      require("barbecue").setup()
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

  {
    "declancm/cinnamon.nvim",
    config = function()
      require("cinnamon").setup()
    end,
  }
})
