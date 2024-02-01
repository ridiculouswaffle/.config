-- The plugins will be installed here

-- Setting up lazy.nvim, a package manager for nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Let's define some packages
require("lazy").setup({
  --{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true},
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({})
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  "neovim/nvim-lspconfig",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "nvim-tree/nvim-tree.lua",
  "nvim-treesitter/nvim-treesitter",
  "onsails/lspkind-nvim",
  "mattn/emmet-vim",
  "SmiteshP/nvim-navic",
})
