-- cahnges to the default vim settings

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
-- vim.signcolumn = auto actiavted with gitsigns plugin
vim.opt.termguicolors = true -- for bufferline plugin 
vim.opt.expandtab = true    -- Use spaces instead of tabs

-- settings for bash like tab completion
vim.opt.wildmode = {'longest', 'list', 'full'}
vim.opt.wildmenu = true

-- path to python libraries
vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/bin/python3'

vim.cmd(':set mouse=a')

vim.cmd([[
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set smartcase               " case sensitive if capital letters are used
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent             " a smarter ways of the above?
set relativenumber          " add line numbers wrt to the line you are in
set number
set wildmode=longest,list   " get bash-like tab completions
set cc=90                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" set backup

set encoding=UTF-8

" open new split panes to right and below
set splitright
set splitbelow
set completeopt=menu,menuone,noselect
]])
