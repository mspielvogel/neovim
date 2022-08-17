" let g:ale_disable_lsp = 1

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
" A fuzzy file finder
Plug 'kien/ctrlp.vim'
" Comment/Uncomment tool
Plug 'preservim/nerdcommenter'
" Switch to the begining and the end of a block by pressing %
"Plug 'tmhedberg/matchit'
" A Tree-like side bar for better navigation
" Plug 'scrooloose/nerdtree'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" A cool status bar
" Plug 'vim-airline/vim-airline'
" Airline themesnvim-web-devicons
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
" Nord Theme
" Plug 'arcticicestudio/nord-vim'
" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
" Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
" Plug 'blueyed/semshi', { 'branch': 'handle-ColorScheme', 'do': ':UpdateRemotePlugins' }
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'sbdchd/neoformat'  " format code
" Intellisense engine
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
Plug 'tpope/vim-fugitive'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'mhinz/vim-grepper'
Plug 'mboughaba/i3config.vim'
" Auto-close braces and scopes
" Plug 'jiangmiao/auto-pairs'
" PDF Viewer
" Plug 'makerj/vim-pdf'
" Image Viewer
" Plug 'ashisha/image.vim'

" Plug 'dracula/vim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'mhinz/vim-startify'
" Plug 'liuchengxu/vim-clap'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'ayu-theme/ayu-vim' 
Plug 'drewtempelmeyer/palenight.vim'
Plug 'EdenEast/nightfox.nvim'
" Plug 'vwxyutarooo/nerdtree-devicons-syntax'
"Plug 'tmhedberg/SimpylFold'  " code folding
" Plug 'andviro/flake8-vim' " check code
" Plug 'https://github.com/nvie/vim-flake8.git'
" Plug 'https://github.com/tell-k/vim-autopep8.git'
Plug 'iamcco/markdown-preview.nvim'
" Plug 'dense-analysis/ale'
" Terminal
" Plug 'kassio/neoterm'
" Jupyter Notebook
Plug 'dccsillag/magma-nvim'
Plug 'untitled-ai/jupyter_ascending.vim'
" Plug 'bfredl/nvim-ipy'
Plug 'hkupty/iron.nvim'
Plug 'GCBallesteros/jupytext.vim'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'GCBallesteros/vim-textobj-hydrogen'
Plug 'lewis6991/gitsigns.nvim'
" for images in kitty terminal for jupyter
" Plug 'jghauser/kitty-runner.nvim'

" show indentation
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'
" show tabs
" Plug 'akinsho/bufferline.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'sindrets/diffview.nvim'

" firefox plugin
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'rcarriga/nvim-dap-ui'
Plug 'sidebar-nvim/sections-dap'
" sidebar with info about the open file
Plug 'sidebar-nvim/sidebar.nvim'
" Plug 'romgrk/sidebar.nvim' " not yet merged version to sidebar
Plug 'preservim/tagbar'

" Plug 'rafi/vim-venom', {'for': 'python'}
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set nocompatible

lua << EOF
-- main init file for neovim

-- Sensible defaults
require('settings')

-- install plugins form ./lua/plugins.lua
require('plugins')

-- Key mappings
require('keymappings')

-- run the settings defind in the config files in lua/config/
-- configs are loaded in lua/config/lua.init
require('config')

EOF


" filetype off

" let &runtimepath.=',~/.vim/bundle/neoterm'

" luado require('nvim-web-devicons').get_icon(filename, extension, { default = true })

filetype plugin on

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" let g:airline_powerline_fonts = 1
" let g:airline_section_warning = ''
" let g:airline_section_error = ''

" " let g:ale_linters = {'python': ['flake8',  'pylint', 'mypy', 'pyright'] }
" " let g:ale_linters = {'python': ['flake8', 'pylint', 'pyright'] }
" let g:ale_linters = {'python': ['flake8', 'pylint', 'mypy'] }
" " let g:ale_linters = {'python': ['flake8']}
" let g:ale_fixers = {'python': ['black', 'isort'], 'yaml': ['prettier'], 'javascript': ['prettier']}
" " let g:ale_completion_enabled = 1
" " let g:ale_completion_autoimport = 1
" " let g:ale_virtualenv_dir_names = ['/home/msp/.cache/pypoetry/virtualenvs', '/home/msp/.virtualenvs']
" let g:ale_python_auto_pipenv = 1
" let g:ale_python_auto_poetry = 1
" let g:ale_python_black_auto_poetry = 1
" let g:ale_python_mypy_auto_poetry = 1
" let g:ale_python_pyright_auto_poetry = 0
" let g:ale_python_pylint_auto_poetry = 1
" let g:ale_python_flake8_auto_poetry = 1
" let g:ale_lint_on_save = 1
" let g:ale_fix_on_save = 1
" let g:ale_set_loclist = 1
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" " let g:ale_set_signs = 0
" let g:ale_set_highlights = 1
" let g:ale_echo_cursor = 1
" let g:ale_cursor_details = 0
" let g:ale_set_balloons = 0
" let g:ale_virtualtext_cursor = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
" let g:ale_keep_listsd_window_open = 0
" map <F4> :ALEFix <Return>
let mapleader=";"
" nmap <F6> :CocCommand cSpell.addWordToDictionary <Return>
nmap <F3> :DiffviewClose <CR>
nmap <F2> :DiffviewOpen <CR>
" run reformat on save
"augroup fmt
"  autocmd!
"  autocmd BufWritePre * undojoin | Neoformat
"augroup END

" run format check on save
" autocmd BufWritePost *.py call flake8#Flake8()
" function NoShow()
"     let g:flake8_show_quickfix=0
"     wq
" endfunction
" 
" autocmd FileType python cmap wq call NoShow()
" 
" autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
" let g:PyFlakeOnWrite = 1
" let g:PyFlakeCheckers = 'pep8,mccabe' " ,frosted is not supporting python3.5

" filetype plugin indent on
" colorscheme nord

" Coc
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" BUT IN THAT CASE you cannot see the the number
""if has("nvim-0.5.0") || has("patch-8.1.1564")
"  " Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif
" set signcolumn=auto

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" map <C-n> :NERDTreeToggle<CR>
" let NERDTreeShowHidden=1 " Show hidden files in NerdTree buffer.

autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab

" color schemes
if (has("termguicolors"))
    set termguicolors
endif
syntax enable
" colorscheme evening
" colorscheme dracula  
" set background=dark
" colorscheme nightfox
colorscheme tokyonight

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


  "```vim " NERDTress File highlighting only the glyph/icon " test highlight
  "just the glyph (icons) in nerdtree: 
"autocmd filetype nerdtree highlight haskell_icon ctermbg=none ctermfg=Red guifg=#ffa500
"autocmd filetype nerdtree highlight html_icon ctermbg=none ctermfg=Red guifg=#ffa500
"autocmd filetype nerdtree highlight go_icon ctermbg=none ctermfg=Red guifg=#ffa500

"autocmd filetype nerdtree syn match haskell_icon ##
  "containedin=NERDTreeFile " if you are using another syn highlight for a
  "given line (e.g. " NERDTreeHighlightFile) need to give that name in the
  "'containedin' for this " other highlight to work with it 
"autocmd filetype nerdtree syn match html_icon ## containedin=NERDTreeFile,html
"autocmd filetype nerdtree syn match go_icon ## containedin=NERDTreeFile ```

" SCP NERDTreeToggle
" Function to open the file or NERDTree or netrw.
"   Returns: 1 if either file explorer was opened; otherwise, 0.
" function! s:OpenFileOrExplorer(...)
"     if a:0 == 0 || a:1 == ''
"         NvimTreeOpen
"     elseif filereadable(a:1)
"         execute 'edit '.a:1
"         return 0
"     elseif a:1 =~? '^\(scp\|ftp\|rsync\)://' " Add other protocols as needed.
"         execute 'Vexplore '.a:1
"     elseif isdirectory(a:1)
"         execute 'NvimTreeOpen '.a:1
"     endif
"     return 1
" endfunction
" 
" " Auto commands to handle OS commandline arguments
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc()==1 && !exists('s:std_in') | if <SID>OpenFileOrExplorer(argv()[0]) | wincmd p | enew | wincmd p | endif | endif
"  
" Command to call the OpenFileOrExplorer function.
" command! -n=? -complete=file -bar Edit :call <SID>OpenFileOrExplorer('<args>')
" 
" " Command-mode abbreviation to replace the :edit Vim command.
" cnoreabbrev e Edit


" NeoTerm
" tnoremap <Esc> <C-\><C-n>
" nnoremap <C-T> :below Topen <Enter>


" netrw
com!  -nargs=* -bar -bang -complete=dir  Lexplore  call netrw#Lexplore(<q-args>, <bang>0)

fun! Lexplore(dir, right)
  if exists("t:netrw_lexbufnr")
  " close down netrw explorer window
  let lexwinnr = bufwinnr(t:netrw_lexbufnr)
  if lexwinnr != -1
    let curwin = winnr()
    exe lexwinnr."wincmd w"
    close
    exe curwin."wincmd w"
  endif
  unlet t:netrw_lexbufnr

  else
    " open netrw explorer window in the dir of current file
    " (even on remote files)
    let path = substitute(exists("b:netrw_curdir")? b:netrw_curdir : expand("%:p"), '^\(.*[/\\]\)[^/\\]*$','\1','e')
    exe (a:right? "botright" : "topleft")." vertical ".((g:netrw_winsize > 0)? (g:netrw_winsize*winwidth(0))/100 : -g:netrw_winsize) . " new"
    if a:dir != ""
      exe "Explore ".a:dir
    else
      exe "Explore ".path
    endif
    setlocal winfixwidth
    let t:netrw_lexbufnr = bufnr("%")
  endif
endfun
" map <C-E> :Lexplore <Enter>

" absolute width of netrw window
let g:netrw_winsize = -28
" do not display info on the top of window
let g:netrw_banner = 0
" tree-view
let g:netrw_liststyle = 3
" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'
" use the previous window to open file
let g:netrw_browse_split = 4

" Toggle Vexplore with Ctrl-f
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
" map <silent> <C-F> :call ToggleVExplorer()<CR>
" only one of the above two functions needed

" open file vertically to the right
" augroup netrw_mappings
"     autocmd!
"     autocmd filetype netrw call Netrw_mappings()
" augroup END
" function! OpenToRight()
"   :rightbelow vnew
"   :wincmd p
"   :normal P
" endfunction
" function! Netrw_mappings()
"     noremap V :call OpenToRight()<cr>
" endfunction
" let g:netrw_altv=1

" nvim sidebar
" luafile $HOME/.config/nvim/sidebar.lua
" luado require'sidebar-nvim'.setup()

" tagbar
nmap <F5> :TagbarToggle<CR>
" gitsigns
luado require('gitsigns').setup()
nmap <A-b> :Gitsigns toggle_current_line_blame <CR>
nmap <A-B> :Git blame <CR>

" nvim tree
luado require'nvim-tree'.setup()

let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

" luafile $HOME/.config/nvim/lua/neo-tree.lua
" luado require('nvim-tree')
" .setup()

" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
" highlight NvimTreeFolderIcon guibg=blue


luafile $HOME/.config/nvim/lua/tree.lua
luado require('tree')

" luafile $HOME/.config/nvim/lua/bufferline.lua
luado require'bufferline'
" luafile $HOME/.config/nvim/neovim-tree.lua
" luado require'neovim-tree'.setup()
function! OpenTree()
    if expand('%p') =~? '^\(scp\|ftp\|rsync\)://' " Add other protocols as needed.
        execute 'Lexplore '
    else
        execute 'lua require"tree".toggle()'
        " execute 'NvimTreeToggle '
    endif
endfunction



nnoremap <A-t> :call OpenTree()<CR>
" nnoremap <A-d> :Dashboard<CR>
" nnoremap <A-r> :Rg<CR>
" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore .pyc --ignore __pycache__ -l -g ""'
" nnoremap <A-a> :Ag<CR>
" nnoremap <A-f> :Files<CR>
" nnoremap <A-g> :GFiles<CR>
" " nmap <C-g> :lua require'tree'.toggle()<CR>
" nmap ZW :write <CR>
" nmap ZQA :quitall <CR>
" nmap ZQW :xa <CR>
" nmap ZAW :wa <CR>
" nmap ZC :cclose <CR>
" nmap ZO :copen <CR>
" nmap ZH :windo wincmd H <CR>
"
" jupyter notebook
nmap <space><space>x <Plug>JupyterExecute
nmap <space><space>X <Plug>JupyterExecuteAll
" Jupytext
let g:jupytext_fmt = 'py'
let g:jupytext_style = 'hydrogen'


" NERDCommenter
" Send cell to IronRepl and move to next cell.
" Depends on the text object defined in vim-textobj-hydrogen
" You first need to be connected to IronRepl
nmap ]x ctrih/^# %%<CR><CR>

" luafile $HOME/.config/nvim/plugins.lua
" luado require('plugins')
" luado require('bar')
" lua << END
"require('indent_blankline').setup()
" END
" luafile $HOME/.config/nvim/indent.lua
nmap <leader>l :IndentBlanklineEnable <CR>
" luado require('indent')
" << END
" require('nvim-treesitter').setup()
" END
" luafile $HOME/.config/nvim/treesitter.lua

" lua << END
" require('lualine').setup()
" END
" luafile $HOME/.config/nvim/lualine_nightfox.lua
" luafile $HOME/.config/nvim/bar.lua
" luado require('lualine')
" luado require('lualine').get_config()
"lua << END
"-- config = function()
"require('kitty-runner').setup()
"-- end
"END

" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


"magma setup
let g:magma_save_path = stdpath("data") .. "/magma/"
function! MyMagmaInit()
	setlocal filetype=python
	set syntax=python
	let l:mangled_fname = expand('%:p') .. '.json'
	let l:mangled_fname = substitute(l:mangled_fname, '%', '%%', 'g')
	let l:mangled_fname = substitute(l:mangled_fname, '/', '%', 'g')
	let l:save_file = g:magma_save_path .. l:mangled_fname
	if filereadable(l:save_file)
		MagmaLoad
	else
		MagmaInit python3
	endif
    MagmaInit python3
endfunction

augroup magma
  au! BufRead,BufNewFile *.ipynb call MyMagmaInit()
  au! BufWrite *.ipynb MagmaSave
augroup end

" mark paragraph, execute it and then jump to the next cell
nmap <leader><leader> vap:<Del><Del><Del><Del><Del>MagmaEvaluateVisual<CR>]h
nmap <space>mi :MagmaInit
nmap <space><space><CR> ?# %%<CR>jv/# %%<CR>k:<Del><Del><Del><Del><Del>MagmaEvaluateVisual<CR>/# %%<CR>j

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>
let g:netrw_bufsettings = 'nohidden noma nomod nonu nowrap ro buflisted'
"
" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"...
" set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
" let auyucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme

" function BrightHighlights()
"     " hi semshiGlobal      ctermfg=red guifg=#ff0000
"     " hi semshiParameter      ctermfg=red guifg=#ff0000
"     " purple
"     hi semshiUnresolved      ctermfg=red guifg=#875fff
"     " hi semshiParameterUnused      ctermfg=red guifg=#ff0000
" endfunction
"
" function! Ayu()
"     execute ':colorscheme ayu'
"     " execute 'luafile $HOME/.config/nvim/lualine_ayu.lua'
"     " execute ':call BrightHighlights()'
" endfunction
" nmap <space><space><space>a :call Ayu()<CR>
"
" function DarkHightlights()
"     hi semshiLocal           ctermfg=209 guifg=#ff875f
"     hi semshiGlobal          ctermfg=214 guifg=#ffaf00
"     hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
"     hi semshiParameter       ctermfg=75  guifg=#5fafff
"     hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
"     hi semshiFree            ctermfg=218 guifg=#ffafd7
"     hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
"     hi semshiAttribute       ctermfg=49  guifg=#00ffaf
"     hi semshiSelf            ctermfg=249 guifg=#b2b2b2
"     hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
"     hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
"
"     hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
"     hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
"     sign define semshiError text=E> texthl=semshiErrorSign
" endfunction

" function! Palenight()
"     execute ':colorscheme palenight'
"     " execute 'luafile $HOME/.config/nvim/lualine.lua'
"     " execute ':call DarkHightlights()'
" endfunction
" nmap <space><space><space>p :call Palenight()<CR>

" " semshi
" hi semshiLocal           ctermfg=209 guifg=#ff875f
" hi semshiGlobal          ctermfg=214 guifg=#ffaf00
" hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
" hi semshiParameter       ctermfg=75  guifg=#5fafff
" hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
" hi semshiFree            ctermfg=218 guifg=#ffafd7
" hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
" hi semshiAttribute       ctermfg=49  guifg=#00ffaf
" hi semshiSelf            ctermfg=249 guifg=#b2b2b2
" hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
" hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
" 
" hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
" hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
" sign define semshiError text=E> texthl=semshiErrorSign
" 
" function MyCustomHighlights()
"     hi semshiGlobal      ctermfg=red guifg=#ff0000
" endfunction
" autocmd FileType python call MyCustomHighlights()

" Compatible with ranger 1.4.2 through 1.7.*
"
" Add ranger as a file chooser in vim
"
" If you add this code to the .vimrc, ranger can be started using the command
" ":RangerChooser" or the keybinding "<leader>r".  Once you select one or more
" files, press enter and ranger will quit again and vim will open the selected
" files.

function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>

" FireNvim
function! OnUIEnter(event) abort
  if s:IsFirenvimActive(a:event)
    set guifont=Hack\ Nerd\ Font:h14
    " let b:syntastic_skip_checks = 1
    set showtabline=0
    " set laststatus=0
    " set spell
    " set spelllang=en
    " nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>
    " nnoremap <C-z> :call firenvim#hide_frame()<CR>
    " nnoremap <C-z> :call firenvim#hide_frame()<CR>
  endif
endfunction

" let python_v = system('which python')
" echo python_v

" let python_v = '/home/msp/.cache/pypoetry/virtualenvs/backend-2LzcaPM4-py3.9/bin/python'



" lua << EOF
" local dap = require('dap')
" dap.adapters.python = {
"   type = 'executable';
"   command = '/usr/bin/python3';
"   args = { '-m', 'debugpy.adapter' };
" }
" EOF
" command = 'import subprocess; subprocess.check_output(["which", "python3"]).decode().strip("\n")';
" os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';

" lua << EOF
" local dap = require('dap')
" dap.configurations.python = {
"   {
"     type = 'python';
"     request = 'launch';
"     name = "Launch file";
"     program = "${file}";
"     pythonPath = function()
"       return  '/home/msp/.cache/pypoetry/virtualenvs/backend-2LzcaPM4-py3.9/bin/python'
"     end;
"   },
" }
" EOF
" lua << EOF
" require('dap')
" vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
" EOF
" lua << EOF
" local dap = require('dap')
" local function get_python()
"     local python_path = '/usr/bin/python'
"     local virtualenv = vim.fn.getenv('VIRTUAL_ENV')
"     if virtualenv ~= vim.NIL and virtualenv ~= '' then
"         python_path = virtualenv .. '/bin/python'
"     end
"
"     return python_path
" end
" dap.configurations.python = {
"   {
"     type = 'python';
"     request = 'launch';
"     name = "Launch file";
"     program = "${file}";
"     pythonPath = function()
"       return get_python()
"     end;
"   },
" }
" EOF
" nnoremap <silent> <F9> <Cmd>lua require'dap'.continue()<CR>
" nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
" nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
" nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
" nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <silent> <F8> <Cmd>lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
" nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
" nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
" " nnoremap <silent> <F7> <Cmd>lua require'dap'.repl.open()<CR>
" nnoremap <silent> <F7> <Cmd>lua require("dapui").toggle()<CR>
" nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>


" ---------------------------------------------------------------------------
"  Replacements

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>



" .............................................................................
" mhinz/vim-grepper
" .............................................................................

let g:grepper={}
let g:grepper.tools=["rg"]

xmap gr <plug>(GrepperOperator)

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <Leader>R
    \ "sy
    \ gvgr
    \ :cfdo %s/<C-r>s//g \| update
     \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>



aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end


