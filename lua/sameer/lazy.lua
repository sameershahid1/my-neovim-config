-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local uv = vim.uv or vim.loop

if not uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
  },

  -- Utilities
  { "ThePrimeagen/harpoon" },
  { "tpope/vim-fugitive" },

  -- LSP & Autocomplete
  { "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "neovim/nvim-lspconfig" },

  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },

  -- Theme
  { "themercorp/themer.lua" },

  -- Which-key & Icons
  { "folke/which-key.nvim" },
  { "nvim-tree/nvim-web-devicons" },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Mini Icons
  {
    "echasnovski/mini.icons",
    config = true,
  },

  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
  },
  { "rafamadriz/friendly-snippets" },

  -- Search & Replace
  {
    "s1n7ax/nvim-search-and-replace",
    config = true,
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
  },

  -- Kube Utils
  {
    "h4ckm1n-dev/kube-utils-nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },

  -- GitHub plugin
  {
    "ldelossa/gh.nvim",
    dependencies = { "ldelossa/litee.nvim" },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      scope = { enabled = true },
    },
  },
})



