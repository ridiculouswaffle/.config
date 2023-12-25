-- Some keybindings
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>t', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<Leader>f', ':Telescope find_files<CR>')
vim.keymap.set('n', 'gp', ':bp<CR>')
vim.keymap.set('n', 'gn', ':bn<CR>')
vim.keymap.set('n', 'gd', ':Bdelete<CR>')
vim.keymap.set('n', '<Leader>q', ':wqa<CR>')
vim.keymap.set('n', '<Leader>!q', ':qa!<CR>')

