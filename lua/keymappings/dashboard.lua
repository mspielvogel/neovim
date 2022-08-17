vim.g.mapleader = ' '
-- dashborad
vim.cmd([[
    " nnoremap <silent><leader>on :DashboardNewFile<CR>
    " nnoremap <silent><leader>fb :DashboardJumpMark<CR>
    " nnoremap <silent><leader>tc :DashboardChangeColorscheme<CR>
    " nnoremap <silent><leader>fh :DashboardFindHistory<CR>
    " nnoremap <silent><leader>ff :DashboardFindFile<CR>
    " nnoremap <silent><leader>fw :DashboardFindWord<CR>
    nnoremap <silent><leader>lc :Telescope commands<CR>
    nnoremap <silent><leader>sl :SessionLoad<CR>
    nnoremap <silent><leader>fh :History<CR>
    nnoremap <silent><leader>ff :Telescope find_files find_command=rg,--hidden,--files<CR>
    nnoremap <silent><leader>bb :Telescope buffers<CR>
    nnoremap <silent><leader>fw :Telescope live_grep<CR>
    nnoremap <silent><leader>cc :Telescope colorscheme<CR>
    nnoremap <silent><leader>c3 :edit ~/.config/i3/config<CR>
    nnoremap <silent><leader>cn :edit ~/.config/nvim/<CR>
    nnoremap <silent><leader>cf :edit ~/.config/fish/<CR>
    nnoremap <silent><leader>ck :edit ~/.config/kitty/kitty.conf<CR>
]])
