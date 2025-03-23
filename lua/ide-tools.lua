local md = require('mini.deps')

function MergeTables(t1, t2)
	for k, v in pairs(t2) do
		if (type(v) == "table") and (type(t1[k] or false) == "table") then
			MergeTables(t1[k], t2[k])
		else
			t1[k] = v
		end
	end
	return t1
end

md.setup({})
-- these five want to be a minor mode invoked by language based major modes
-- Trouble gives me good error/lsp nav
md.add({ source = 'https://github.com/folke/trouble.nvim.git' })
-- Nvim DAP gives me the debug adapter protocol
md.add({ source = 'https://github.com/mfussenegger/nvim-dap.git' })
-- lspconfig simplifies lsp setup, though i'll be overriding it in a few places
md.add({ source = 'https://github.com/neovim/nvim-lspconfig.git' })
-- completion and snippets. these are resonably likely to see replacement
require('mini.snippets').setup()
require('mini.completion').setup()
local trouble = require('trouble')
trouble.setup()

local wk = require('which-key')
wk.setup()
-- this should live with completion config
local imap_expr = function(lhs, rhs)
	vim.keymap.set('i', lhs, rhs, { expr = true })
end
imap_expr('<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])

function NormalMapKey(mapping, func, desc)
	local base_opts = {
		noremap = true,
		silent = true
	}
	local opts = MergeTables({ desc = desc }, base_opts)
	vim.keymap.set('n', mapping, func, opts)
end

local function map_keys()
	-- local function visual_map_key(mapping, func, desc)
	-- 	local opts = MergeTables({desc=desc}, base_opts)
	-- 	vim.keymap.set('n', mapping, func, opts)
	-- end
	NormalMapKey('<Leader>la', function() vim.lsp.buf.code_action() end,
		"Selects a code action available at the current cursor position.")

	NormalMapKey('<Leader>gD', function() vim.lsp.buf.declaration() end,
		"Jumps to the declaration of the symbol under the cursor.")

	NormalMapKey('<Leader>gd', function() vim.lsp.buf.declaration() end,
		"Jumps to the definition of the symbol under the cursor.")

	NormalMapKey('<Leader>dd', function() trouble.open("diagnostics") end,
		"open Trouble in diagnostics mode")

	NormalMapKey('<Leader>lf', function() vim.lsp.buf.format() end,
		"Formats a buffer using the attached  language server clients")

	NormalMapKey('<Leader>lf', function() vim.lsp.buf.format() end,
		"Formats a buffer using the attached  language server clients")

	NormalMapKey('K', function() vim.lsp.buf.hover() end,
		"Displays hover information about the symbol under the cursor.")

	wk.add({
		{ "<leader>d", group = "󰑃 lsp/diagnostics" },
		{ "<leader>l", group = "󰑃 lsp/main" }
	})
end

vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP keymaps',
	callback = map_keys
})
