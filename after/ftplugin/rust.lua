local deps = require('mini.deps')
deps.setup({})
local wk = require('which-key')
local mi = require('mini.icons')
local rust_icon = mi.get('filetype', 'rust')
wk.setup({})
require('ide-tools')
-- junk should already be present but require it anyway
require('junk')
-- this module alone uses neotest for now
deps.add({ source = 'https://github.com/nvim-neotest/neotest.git' })

-- rustacean also overrides a few core lsp mappings so i'll replace those here
-- NormalMapKey("K", function() vim.cmd.RustLsp { 'hover', 'actions' } end,
-- 	"Hover Actions!")
NormalMapKey("<Leader>ra", function() vim.cmd.RustLsp('hover', 'actions') end,
	"Hover Actions!")

VisualMapKey("<Leader>ra", function() vim.cmd.RustLsp('hover', 'range') end,
	"Hover Actions on a visual range!")

NormalMapKey("<Leader>dd", function() vim.cmd.RustLsp('debug') end,
	rust_icon .. " Show debug targets at the cursor")

NormalMapKey("<Leader>dD", function() vim.cmd.RustLsp('debuggables') end,
	rust_icon .. " Search through available debug targets")

NormalMapKey("<Leader>lx", function() vim.cmd.RustLsp('run') end,
	rust_icon .. " Search for a runnable at the cursor")

NormalMapKey("<Leader>lX", function() vim.cmd.RustLsp('runnables') end,
	rust_icon .. " Select from a list of runnables")

NormalMapKey("<Leader>lk", function() vim.cmd.RustLsp('moveItem', 'up') end,
	rust_icon .. " Move item up")

NormalMapKey("<Leader>lj", function() vim.cmd.RustLsp('moveItem', 'down') end,
	rust_icon .. " Move item down")

NormalMapKey("<Leader>lm", function() vim.cmd.RustLsp('expandMacro') end,
	rust_icon .. " expand the macro at the cursor")

NormalMapKey("<Leader>lV", function() vim.cmd.RustLsp('view', 'hir') end,
	rust_icon .. " view the compiled HIR")

NormalMapKey("<Leader>lv", function() vim.cmd.RustLsp('view', 'mir') end,
	rust_icon .. " view the compiled MIR")

NormalMapKey("<Leader>lj", function() vim.cmd.RustLsp('joinLines') end,
	rust_icon .. " Join lines (rust aware)")

NormalMapKey("<Leader>l/", function() vim.cmd.RustLsp('ssr') end,
	rust_icon .. " Structural Search and Replace")

NormalMapKey("<Leader>lp", function() vim.cmd.RustLsp('syntaxTree') end,
	rust_icon .. " Parse and display the AST")
NormalMapKey("<Leader>le", function() vim.cmd.RustLsp('explainError', 'current') end,
	rust_icon .. " Explain the errors on the current line")
NormalMapKey("<Leader>lE", function() vim.cmd.RustLsp('explainError', 'cycle') end,
	rust_icon .. " Cycle through diagnostic explanations")
wk.add({
	{ "<leader>r", group = "󰑃 lsp/rust" },
	{ "<leader>d", group = "󰑃 dap/debug" },
})
