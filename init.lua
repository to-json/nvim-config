-- moved the mini.nvim installer to a separate file
require('mini-install')
require('base')
require('windows')
require('autocmds')
-- this should not be in init but is useful there while i test
require('ide-tools')
-- these two are new to me and i'm trying them as alternatives to fugitive
require('mini.git').setup()
require('mini.diff').setup()

