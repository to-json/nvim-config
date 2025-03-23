-- i don't go anywhere without a jj mapping 
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
-- global dependencies
local md = require('mini.deps')
md.setup({})
-- local add, now, later = md.add, md.now, md.later
local add= md.add
-- Which Key gives me hydra modes and better key clues than mini
add({ source = 'https://github.com/folke/which-key.nvim.git' })

-- everforest colors
add({ source = 'https://github.com/sainnhe/everforest.git' })
vim.g.everforest_enable_italic = true
vim.cmd.colorscheme('everforest')

-- defaults
require('mini.basics').setup({
	mappings = {
		option_toggle_prefix = "<Leader>T",
		windows = true,
	}
})
vim.keymap.del({'n', 'v'}, 'j')
vim.keymap.del({'n', 'v'},'k')
vim.api.nvim_set_var("signcolumn", "auto")
-- a simple startpage. considering snacks for dashboards here,
-- but i think it's excessive
require('mini.starter').setup({})
-- custom textobject tools
require('mini.ai').setup({})
-- replace text and swap region
require('mini.operators').setup()
-- auto bracket pair insertion
require('mini.pairs').setup()
-- simpler line comments
require('mini.comment').setup()
-- better vim surround. a favorite
require('mini.surround').setup()
-- unimpared but nvim-coded
require('mini.bracketed').setup()
-- makes f and t jumps multiline
require('mini.jump').setup()
-- hit enter to direct jump anywhere
require('mini.jump2d').setup({  view = {
    dim = true,
    n_steps_ahead = 8,
  }})
-- cute highlight of current scope
require('mini.indentscope').setup()
-- highlight word under cursor, a pleasantry
require('mini.cursorword').setup()
-- notification engine
require('mini.notify').setup()
-- status bar. i might go back to windline, it's fucking ugly
require('mini.statusline').setup()
-- i'm actually likely to drop this but a bufferline is nice
require('mini.tabline').setup()
-- powers statusline, is aesthetically pleasant
require('mini.icons').setup()
-- telescope alternative. will require lots of config
require('mini.pick').setup()
-- lots of things, but, mostly extra pickers
-- i still might want snacks pick and pickers, or telescope
require('mini.extra').setup()
-- zoom, put, and resize window
require('mini.misc').setup()
