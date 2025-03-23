local wk = require('which-key')

vim.keymap.set('n', "<Leader>wh", function() vim.api.nvim_command("wincmd h") end, 
	  { noremap=true, silent=true, 
	    desc="move cursor one window left" })
vim.keymap.set('n', '<Leader>wj',  function() vim.api.nvim_command("wincmd j") end,{
   desc= "move cursor one window down" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wk',  function() vim.api.nvim_command("wincmd k") end,{
   desc= "move cursor one window up" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wl',  function() vim.api.nvim_command("wincmd l") end,{
   desc= "move cursor one window right" ,
   noremap=true, silent=true})

vim.keymap.set('n', '<Leader>ww',  function() vim.api.nvim_command("wincmd w") end,{
   desc= "move cursor one window clockwise" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wW',  function() vim.api.nvim_command("wincmd W") end,{
   desc= "move cursor one window counterclockwise" ,
   noremap=true, silent=true})

vim.keymap.set('n', '<Leader>wm',  function() vim.api.nvim_command("wincmd P") end,{
   desc= "move cursor to preview window" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wp',  function() vim.api.nvim_command("wincmd p") end,{
   desc= "move cursor to previous window" ,
   noremap=true, silent=true})

vim.keymap.set('n', '<Leader>wH',  function() vim.api.nvim_command("wincmd H") end,{
   desc= "move window to leftmost edge" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wJ',  function() vim.api.nvim_command("wincmd J") end,{
   desc= "move window to bottommost edge" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wK',  function() vim.api.nvim_command("wincmd K") end,{
   desc= "move window to topmost edge" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wL',  function() vim.api.nvim_command("wincmd L") end,{
   desc= "move window to rightmost edge" ,
   noremap=true, silent=true})

vim.keymap.set('n', '<Leader>wr',  function() vim.api.nvim_command("wincmd r") end,{
   desc= "rotate windows clockwise" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wR',  function() vim.api.nvim_command("wincmd R") end,{
   desc= "rotate windows counterclockwise" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wx',  function() vim.api.nvim_command("wincmd x") end,{
   desc= "swap this window with the next" ,
   noremap=true, silent=true})

vim.keymap.set('n', '<Leader>w=',  function() vim.api.nvim_command("wincmd =") end,{
   desc= "make all windows equal sized" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wo',  function() vim.api.nvim_command("wincmd o") end,{
   desc= "close other windows" ,
   noremap=true, silent=true})

vim.keymap.set('n', '<Leader>w-',  function() vim.api.nvim_command("split") end,{
   desc= "split current window horizontally" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>w|',  function() vim.api.nvim_command("vsplit") end,{
   desc= "split current window vertically" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wf',  function() vim.api.nvim_command("wincmd f") end,{
   desc= "split to open the filename under cursor  " ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wF',  function() vim.api.nvim_command("wincmd F") end,{
   desc= "split to open the filename under cursor at specified line" ,
   noremap=true, silent=true})

vim.keymap.set('n', '<Leader>wc',  function() vim.api.nvim_command("wincmd c") end,{
   desc= "close the current window" ,
   noremap=true, silent=true})
vim.keymap.set('n', '<Leader>wz',  function() vim.api.nvim_command("wincmd z") end,{
   desc= "close any 'preview' window",
   noremap=true, silent=true})

wk.add({ 
	{ "<leader>w", group = "󰑃 window" } })
