local deps = require('mini.deps')
deps.setup({})
local wk = require('which-key')
local mi = require('mini.icons')
local go_icon = mi.get('filetype', 'go')
wk.setup({})
require('ide-tools')
require('junk')
require'lspconfig'.gopls.setup{}

-- Place code below here

-- Go functionality mappings
-- Documentation and type info
NormalMapKey("<Leader>ah", function() vim.cmd("GoDoc") end, 
    go_icon .. " Show documentation")

NormalMapKey("<Leader>aH", function() vim.cmd("GoInfo") end,
    go_icon .. " Show type info at cursor")

NormalMapKey("<Leader>vt", function() vim.cmd("GoTest") end,
    go_icon .. " Run package tests")

NormalMapKey("<Leader>vT", function() vim.cmd("GoTestFunc") end,
    go_icon .. " Run test at cursor")

NormalMapKey("<Leader>vc", function() vim.cmd("GoCoverage") end,
    go_icon .. " Show test coverage")

NormalMapKey("<Leader>vr", function() vim.cmd("GoRun") end,
    go_icon .. " Run current file")

NormalMapKey("<Leader>vb", function() vim.cmd("GoBuild") end,
    go_icon .. " Build current package")

NormalMapKey("<Leader>vl", function() vim.cmd("GoLint") end,
    go_icon .. " Lint current package")

NormalMapKey("<Leader>vv", function() vim.cmd("GoVet") end, 
    go_icon .. " Vet current package")

-- Code generation and manipulation
NormalMapKey("<Leader>.i", function() vim.cmd("GoImpl") end,
    go_icon .. " Generate interface implementation")

NormalMapKey("<Leader>.e", function() vim.cmd("GoIfErr") end,
    go_icon .. " Generate error handling")

NormalMapKey("<Leader>.j", function() vim.cmd("GoAddTags") end,
    go_icon .. " Add struct tags")

NormalMapKey("<Leader>.r", function() vim.cmd("GoRename") end,
    go_icon .. " Rename identifier")

NormalMapKey("<Leader>.f", function() vim.cmd("GoFmt") end,
    go_icon .. " Format current file")

NormalMapKey("<Leader>.F", function() vim.cmd("GoImports") end,
    go_icon .. " Format and optimize imports")

-- Debug commands
NormalMapKey("<Leader>dd", function() vim.cmd("GoDebugStart") end,
    go_icon .. " Start debugging")

NormalMapKey("<Leader>dD", function() vim.cmd("GoDebugTest") end,
    go_icon .. " Debug current test")

NormalMapKey("<Leader>db", function() vim.cmd("GoDebugBreakpoint") end,
    go_icon .. " Toggle breakpoint")

-- Code analysis
NormalMapKey("<Leader>aa", function() vim.cmd("GoAlternate") end,
    go_icon .. " Toggle between implementation and test")

NormalMapKey("<Leader>ad", function() vim.cmd("GoDef") end,
    go_icon .. " Go to definition")

NormalMapKey("<Leader>ar", function() vim.cmd("GoReferrers") end,
    go_icon .. " Find references")

NormalMapKey("<Leader>aI", function() vim.cmd("GoImplements") end,
    go_icon .. " Find implementations")

NormalMapKey("<Leader>as", function() vim.cmd("GoCallstack") end,
    go_icon .. " Show call stack")


-- Set up which-key groups
wk.add({
    { "<leader>v", group = go_icon .. " validation" },
    { "<leader>.", group = go_icon .. " code" },
    { "<leader>d", group = go_icon .. " debug" },
    { "<leader>a", group = go_icon .. " analysis" },
})
