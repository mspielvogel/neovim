-- keymappings for sidebar-nvim
vim.cmd([[
    " noremap <A-s> :luado require'sidebar-nvim'.toggle()<CR>
    noremap <A-s> :luado require'sidebar-nvim'.open()<CR>
    noremap <A-S> :luado require'sidebar-nvim'.close()<CR>
    ]])
-- map('n', 'A-s', ':luado require"sidebar-nvim".toggle()<CR>')

