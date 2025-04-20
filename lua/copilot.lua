local md = require('mini.deps')
md.add 'github/copilot.vim'
md.add 'nvim-lua/plenary.nvim'
md.add 'CopilotC-Nvim/CopilotChat.nvim'

-- most of this is stolen from github user deathbeam

local chat = require 'CopilotChat'
local prompts = require('CopilotChat.config.prompts')
local select = require('CopilotChat.select')
local cutils = require('CopilotChat.utils')

local COPILOT_PLAN = [[
You are a software architect and technical planner focused on clear, actionable development plans.
]] .. prompts.COPILOT_BASE.system_prompt .. [[

When creating development plans:
- Start with a high-level overview
- Break down into concrete implementation steps
- Identify potential challenges and their solutions
- Consider architectural impacts
- Note required dependencies or prerequisites
- Estimate complexity and effort levels
- Track confidence percentage (0-100%)
- Format in markdown with clear sections

Always end with:
"Current Confidence Level: X%"
"Would you like to proceed with implementation?" (only if confidence >= 90%)
]]

chat.setup({
    model = 'claude-3.7-sonnet',
    references_display = 'write',
    debug = false,
    question_header = ' ' .. "[u]" .. ' ',
    answer_header = ' ' .. "[b]" .. ' ',
    error_header = '> ' .. "[w]" .. ' ',
    selection = select.visual,
    context = 'buffers',
    mappings = {
        reset = false,
        show_diff = {
            full_diff = true,
        },
    },
    prompts = {
        Explain = {
            mapping = '<leader>ce',
            description = 'Copilot Explain',
        },
        Review = {
            mapping = '<leader>cr',
            description = 'Copilot Review',
        },
        Tests = {
            mapping = '<leader>ct',
            description = 'Copilot Tests',
        },
        Fix = {
            mapping = '<leader>cf',
            description = 'Copilot Fix',
        },
        Optimize = {
            mapping = '<leader>co',
            description = 'Copilot Optimize',
        },
        Docs = {
            mapping = '<leader>cd',
            description = 'Copilot Documentation',
        },
        Commit = {
            mapping = '<leader>cc',
            description = 'Copilot Generate Commit',
            selection = select.buffer,
        },
        Plan = {
            prompt = 'Create or update the development plan for the selected code. Focus on architecture, implementation steps, and potential challenges.',
            system_prompt = COPILOT_PLAN,
            context = 'file:.copilot/plan.md',
            progress = function()
                return false
            end,
            callback = function(response, source)
                chat.chat:append('Plan updated successfully!', source.winnr)
                local plan_file = source.cwd() .. '/.copilot/plan.md'
                local dir = vim.fn.fnamemodify(plan_file, ':h')
                vim.fn.mkdir(dir, 'p')
                local file = io.open(plan_file, 'w')
                if file then
                    file:write(response)
                    file:close()
                end
            end,
        },
    },
    contexts = {
    },
    providers = {
    },
})

vim.keymap.set({ 'n' }, '<leader>ca', chat.toggle, { desc = 'Copilot Toggle' })
vim.keymap.set({ 'v' }, '<leader>ca', chat.open, { desc = 'Copilot Open' })
vim.keymap.set({ 'n' }, '<leader>cx', chat.reset, { desc = 'Copilot Reset' })
vim.keymap.set({ 'n' }, '<leader>cs', chat.stop, { desc = 'Copilot Stop' })
vim.keymap.set({ 'n' }, '<leader>cm', chat.select_model, { desc = 'Copilot Models' })
vim.keymap.set({ 'n' }, '<leader>cg', chat.select_agent, { desc = 'Copilot Agents' })
vim.keymap.set({ 'n', 'v' }, '<leader>cp', chat.select_prompt, { desc = 'Copilot Prompts' })
vim.keymap.set({ 'n', 'v' }, '<leader>cq', function()
    vim.ui.input({
        prompt = 'Copilot Question> ',
    }, function(input)
        if input ~= '' then
            chat.ask(input)
        end
    end)
end, { desc = 'Copilot Question' })
