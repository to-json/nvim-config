vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
WK = require('which-key')
WK.setup {}
require('keymaps.windows')
require('keymaps.snippy')
require('keymaps.diagnostics')
require('keymaps.neogen')
require('keymaps.focus')
require('keymaps.chatgpt')
