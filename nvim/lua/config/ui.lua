-- Set some UI things...
vim.cmd('colorscheme nord') -- The colorscheme must be nord, yk
vim.o.guifont='Iosevka Nerd Font' -- And my favourite font, Iosevka!
vim.cmd('set relativenumber') -- Relative number....
vim.cmd('set number') -- And also, I need the current line number!

-- The indent lines, they are also important!
require("ibl").setup()
