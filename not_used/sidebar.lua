require("sidebar-nvim").setup({
    disable_default_keybindings = 0,
    bindings = nil,
    open = true,
    side = "right",
    initial_width = 35,
    hide_statusline = true,
    update_interval = 1000,
    sections = { 
        "datetime",
        -- "diagnostics",
        "todos",
        "git",
        require("dap-sidebar-nvim.breakpoints"),
        "containers",
        "buffers",
        -- "files",
        -- "symbols"
    },
    section_separator = {"", "-----", ""},
    containers = {
        attach_shell = "/bin/sh", show_all = true, interval = 5000,
    },
    datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
    -- todos = { ignored_paths = { "~" } },
    todos = {
        icon = "",
        ignored_paths = {'~'}, -- ignore certain paths, this will prevent huge folders like $HOME to hog Neovim with TODO searching
        initially_closed = false, -- whether the groups should be initially closed on start. You can manually open/close groups later.
    },
    containers = {
        icon = "",
        use_podman = false,
        attach_shell = "/bin/bash",
        show_all = true, -- whether to run `docker ps` or `docker ps -a`
        interval = 5000, -- the debouncer time frame to limit requests to the docker daemon
    },
    dap = {
        breakpoints = {
            icon = "🔍"
        }
    },
    buffers = {
        icon = "",
        ignored_buffers = {}, -- ignore buffers by regex
        sorting = "id", -- alternatively set it to "name" to sort by buffer name instead of buf id
        show_numbers = true, -- whether to also show the buffer numbers
        ignore_not_loaded = false, -- whether to ignore not loaded buffers
        ignore_terminal = true, -- whether to show terminal buffers in the list
    },
    -- files = {
    --     icon = "",
    --     show_hidden = false,
    --     ignored_paths = {"%.git$"}
    -- },
    -- symbols = {
    --     icon = "ƒ",
    -- }
})

-- require('sidebar-nvim').setup {
--   bindings = {
--     ['q'] = function()
--       require('sidebar-nvim').close()
--     end
--   },
--   disable_default_keybindings = 0,
--   ["git-status"] = {
--     icon = "",
--   },
--   initial_width = 50,
--   section_separator = '',
--   sections = {'git', 'diagnostics', 'todos'},
--   todos = {
--     initially_closed = true
--   },
--   update_interval = 250
-- }
