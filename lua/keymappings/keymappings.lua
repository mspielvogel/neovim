--[[
:map  - Displays normal, visual, select and operator pending mode
:map! - Displays insert and command-line mode
:nmap - Display normal mode maps
:imap - Display insert mode maps
:vmap - Display visual and select mode maps
:smap - Display select mode maps
:xmap - Display visual mode maps
:cmap - Display command-line mode maps
:omap - Display operator pending mode maps
--]] -- Mappings for special chars
--[[
  <BS>           Backspace
  <Tab>          Tab
  <CR>           Enter
  <Enter>        Enter
  <Return>       Enter
  <Esc>          Escape
  <Space>        Space
  <Up>           Up arrow
  <Down>         Down arrow
  <Left>         Left arrow
  <Right>        Right arrow
  <F1> - <F12>   Function keys 1 to 12
  #1, #2..#9,#0  Function keys F1 to F9, F10
  <Insert>       Insert
  <Del>          Delete
  <Home>         Home
  <End>          End
  <PageUp>       Page-Up
  <PageDown>     Page-Down
  <bar>          the '|' character, which otherwise needs to be escaped '\|'
--]] 

-- function for easy kemapping handling
local function map(mode, lhs, rhs, opts)
    local options = {
        noremap = true
    }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd([[
" Split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

]])


vim.cmd([[
    nnoremap <silent> <A-t> :call OpenTree()<CR>
    nnoremap <silent> <F4> <cmd>lua vim.lsp.buf.format()<CR>
    nnoremap <silent> <A-d> :Dashboard<CR>
    nnoremap <silent> <A-r> :Rg<CR>
    let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore .pyc --ignore __pycache__ -l -g ""'
    nnoremap <silent> <A-a> :Ag<CR>
    nnoremap <silent> <A-f> :Files<CR>
    nnoremap <silent> <A-g> :GFiles<CR>
    " nmap <C-g> :lua require'tree'.toggle()<CR>
    nmap ZW :write <CR>
    nmap ZQA :quitall <CR>
    nmap ZQW :xa <CR>
    nmap ZAW :wa <CR>
    nmap ZC :cclose <CR>
    nmap ZO :copen <CR>
    nmap ZH :windo wincmd H <CR>
    nmap ZV :source $MYVIMRC <CR>
]])

-- Map leader to space
vim.g.mapleader = ' '






-- keymappings for nvim-tree
-- map('n', '<A-t>', ':NvimTreeToggle<CR>')
-- map('n', '<A-t>', ':OpenTree()<CR>')
map('n', '<A-T>', ':TroubleToggle<CR>')
map('n', '<A-P>', ':colorscheme palenight<CR>')
map('n', '<A-F>', ':colorscheme nightfox<CR>')
map('n', '<A-J>', ':colorscheme tokyonight<CR>')
map('n', '<A-A>', ':colorscheme ayu<CR>')
map('n', ';r', ':NvimTreeRefresh<CR>')
map('n', ';f', ':NvimTreeFindFile<CR>')
-- map('n', '<A-A>', ':ALEToggle<CR>')


vim.cmd([[
nnoremap <silent> <F9> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
" nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <F8> <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
" nnoremap <silent> <F7> <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <F7> <Cmd>lua require("dapui").toggle()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>

]])

return {
    map = map
}
