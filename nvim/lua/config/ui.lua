-- Set some UI things...
vim.o.guifont='Iosevka Nerd Font' -- And my favourite font, Iosevka!
vim.cmd('set number') -- And also, I need the current line number!
vim.cmd('set autoindent expandtab tabstop=2 shiftwidth=2')

-- The indent lines, they are also important!
local highlight = {
  "CursorColumn",
  "Whitespace",
}


--[[
require("ibl").setup {
  indent = { highlight = highlight, char = "" },
  whitespace = {
    highlight = highlight,
    remove_blankline_trail = false,
  },
  scope = { enabled = false }
} --]]

-- Default options:
--[[require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})--]]

require("nord").setup({
  transparent = true,
})

vim.cmd("colorscheme nord")
vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
