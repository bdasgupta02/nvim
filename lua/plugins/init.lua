return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clangd",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  { "typicode/bg.nvim", lazy = false },

  {
    "dstein64/nvim-scrollview",
    lazy = false,
    config = function()
      require("scrollview").setup()
    end,
  },

  {
    "tris203/precognition.nvim",
    lazy = false,
    config = {
      startVisible = false,
    },
  },

  {
    "sindrets/diffview.nvim",
    lazy = false,
  },

  {
    "jemag/telescope-diff.nvim",
    lazy = false,
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
    },
  },
}
