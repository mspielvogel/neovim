-- Plugin: https://github.com/EdenEast/nightfox.nvim
-- This function set the configuration of nightfox. If a value is not passed in the setup function
-- it will be taken from the default configuration
-- activate terminal colors
vim.o.termguicolors = true
-- load nightfox color scheme
-- local nightfox = require('nightfox')
-- nightfox.setup({
--   fox = "nightfox",                                       -- nightfox, nordfox, dayfox, dawnfox and duskfox
--   styles = {
--     comments = "italic",                                 -- change style of comments to be italic
--     keywords = "bold",                                   -- change style of keywords to be bold
--     functions = "italic,bold"                            -- styles can be a comma separated list
--   },
--   inverse = {
--     match_paren = true,                                  -- inverse the highlighting of match_parens
--   },
--   colors = {
--     red = "#FF000",                                      -- Override the red color for MAX POWER
--     bg_alt = "#000000",
--   },
--   hlgroups = {
--     TSPunctDelimiter = { fg = "${red}" },                -- Override a highlight group with the color red
--     LspCodeLens = { bg = "#000000", style = "italic" },
--   }
-- })

-- Load the configuration set above and apply the colorscheme
-- nightfox.load()

local specs = {
    -- As with palettes, the values defined under `all` will be applied to every style.
    all = {
        syntax = {
            operator="magenta",
            conditional="magenta"
        }
    }
}
require("nightfox").setup({specs = specs})
vim.cmd("colorscheme nightfox")

