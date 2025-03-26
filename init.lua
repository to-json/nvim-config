-- moved the mini.nvim installer to a separate file
require 'mini-install'
require 'junk'
require 'base'
NormalMapKey("<leader>@", function() require('ai') end, "Activate so-called AI features")
require 'ftplugins'
require 'windows'
require 'autocmds'
-- these two are new to me and i'm trying them as alternatives to fugitive
require('mini.git').setup()
require('mini.diff').setup()

