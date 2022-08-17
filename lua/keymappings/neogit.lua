-- local neogit = require('neogit')
--
-- vim.keymap.set(
--   "",
--   "<A-n>",
--   neogit.open({ "commit" }),
--   { desc = "Neogit" }
-- )

vim.cmd([[
    nnoremap <A-N> :Neogit<CR>
    " actually a fugitive cmd
    nnoremap <A-U> :Gread<CR> 
    ]])
