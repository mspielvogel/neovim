-- local tree ={}
-- tree.open = function ()
--    require'bufferline.state'.set_offset(31, 'FileTree')
--    require'nvim-tree'.find_file(true)
-- end
-- 
-- tree.close = function ()
--    require'bufferline.state'.set_offset(0)
--    require'nvim-tree'.close()
-- end
-- 
-- return tree
-- vim.g.nvim_tree_quit_on_open = 0 -- this doesn't play well with barbar
-- local tree_cb = require'nvim-tree.config'.nvim_tree_callback
--     vim.g.nvim_tree_bindings = {
--       -- ["<CR>"] = ":YourVimFunction()<cr>",
--     git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
--     folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
-- }
--
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
-- vim.g.nvim_tree_icons = {
--   default = "",
--   symlink = "",
--   git = {
--     unstaged = "",
--     staged = "S",
--     unmerged = "",
--     renamed = "➜",
--     deleted = "",
--     untracked = "U",
--     ignored = "◌",
--   },
--   folder = {
--     default = "",
--     open = "",
--     empty = "",
--     empty_open = "",
--     symlink = "",
--   },
-- }
--
-- local status_ok, nvim_tree = pcall(require, "nvim-tree")
-- if not status_ok then
--   return
-- end
--
-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
--   return
-- end
--
-- local tree_cb = nvim_tree_config.nvim_tree_callback
--
-- nvim_tree.setup {
--   disable_netrw = true,
--   hijack_netrw = true,
--   open_on_setup = false,
--   ignore_ft_on_setup = {
--     "startify",
--     "dashboard",
--     "alpha",
--   },
--   auto_close = true,
--   open_on_tab = false,
--   hijack_cursor = false,
--   update_cwd = true,
--   update_to_buf_dir = {
--     enable = true,
--     auto_open = true,
--   },
--   diagnostics = {
--     enable = true,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = "",
--     },
--   },
--   update_focused_file = {
--     enable = true,
--     update_cwd = true,
--     ignore_list = {},
--   },
--   system_open = {
--     cmd = nil,
--     args = {},
--   },
--   filters = {
--     dotfiles = false,
--     custom = {},
--   },
--   git = {
--     enable = true,
--     ignore = true,
--     timeout = 500,
--   },
--   view = {
--     width = 30,
--     height = 30,
--     hide_root_folder = false,
--     side = "left",
--     auto_resize = true,
--     mappings = {
--       custom_only = false,
--       list = {
--         { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
--         { key = "h", cb = tree_cb "close_node" },
--         { key = "v", cb = tree_cb "vsplit" },
--       },
--     },
--     number = false,
--     relativenumber = false,
--   },
--   trash = {
--     cmd = "trash",
--     require_confirm = true,
--   },
--   quit_on_open = 0,
--   git_hl = 1,
--   disable_window_picker = 0,
--   root_folder_modifier = ":t",
--   show_icons = {
--     git = 1,
--     folders = 1,
--     files = 1,
--     folder_arrows = 1,
--     tree_width = 30,
--   },
-- }
-- vim.g.nvim_tree_follow = 1 -- "0 by default, this option allows the cursor to be updated when entering a buffer
-- vim.g.nvim_tree_auto_close = O.auto_close_tree -- 0 by default, closes the tree when it's the last window
-- vim.g.nvim_tree_auto_ignore_ft = 'startify' --empty by default, don't auto open tree on specific filetypes.
-- vim.g.nvim_tree_quit_on_open = 0 -- this doesn't play well with barbar
-- local tree_cb = require'nvim-tree.config'.nvim_tree_callback
--     vim.g.nvim_tree_bindings = {
--       -- ["<CR>"] = ":YourVimFunction()<cr>",
--     git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
--     folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
-- }
-- local view = require'nvim-tree.view'
--
-- local _M = {}
-- _M.toggle_tree = function()
--   if view.win_open() then
--     require'nvim-tree'.close()
--     require'bufferline.state'.set_offset(0)
--   else
--     require'bufferline.state'.set_offset(31, 'File Explorer')
--     require'nvim-tree'.find_file(true)
--   end
--
-- end
--
-- return _M
local tree ={}
local g = vim.g

-- Explicitly set the nvim tree width
g.nvim_tree_width = 30

local tree_width = g.nvim_tree_width

tree.toggle = function()
   require('nvim-tree').toggle()
  if require('nvim-tree.view').is_visible() then
    require('bufferline.state').set_offset(tree_width + 1, 'FileTree')
   require('nvim-tree').find_file(true)
 else
    require('bufferline.state').set_offset(0)
 end
end

return tree
