-- The bufferline...
bufferline = require('bufferline')
bufferline.setup({
  options = {
    separator_style = 'slant',
    offsets = {
      {
        filetype = "NvimTree",
    	text = "Tree",
	    highlight = "Directory",
	    seperator = true,
      }
    }
  }
})

