-- My NeoVim Configuration

require('config.plugins') -- The plugins
require('config.nvim-cmp') -- Configures nvim-cmp
require('config.lualine') -- The lualine config
-- require('config.bufferline') -- Bufferline! Yay!
require('config.treesitter') -- The treesitter config
require('config.nvim-tree') -- NvimTree Config
require('config.ui') -- Some UI things
require('config.keymaps') -- Keymaps!
require('config.lsp') -- The LSP!

-- Set some vim things in lua... yeah..
vim.cmd('set background=dark')
vim.cmd('set tabstop=4')

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
