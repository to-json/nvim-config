-- unfortunately ftplugins themselves cannot be loaded in after
-- the ftplugin is loaded. fortunately, you can shove a buncha
-- them in an once and still only load them when used.
-- unfortunately i only have one at the moment so this file
-- seems a little excessive. fortunately i know myself so
-- here's a big comment to amuse me until this file is fuller
local deps = require('mini.deps')
deps.setup({})
deps.add({ source = 'https://github.com/mrcjkb/rustaceanvim.git' })
