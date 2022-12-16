local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- Plug 'wellle/targets.vim'
-- Plug 'tpope/vim-surround'
-- Plug 'tpope/vim-repeat'
-- A fuzzy file finder
Plug 'kien/ctrlp.vim'
-- Comment/Uncomment tool
Plug 'preservim/nerdcommenter'
-- Switch to the begining and the end of a block by pressing %
--Plug 'tmhedberg/matchit'
-- A Tree-like side bar for better navigation
-- Plug 'scrooloose/nerdtree'
Plug 'kyazdani42/nvim-web-devicons' -- for file icons
Plug 'kyazdani42/nvim-tree.lua'
-- A cool status bar
-- Plug 'vim-airline/vim-airline'
-- Airline themesnvim-web-devicons
-- Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
-- Nord Theme
-- Plug 'arcticicestudio/nord-vim'
-- Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
-- Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
-- Plug 'blueyed/semshi', { 'branch': 'handle-ColorScheme', 'do': ':UpdateRemotePlugins' }
-- Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
--Plug 'sbdchd/neoformat'  " format code
-- Intellisense engine
Plug('neoclide/coc.nvim', {branch = 'release'})
-- Git integration
Plug 'tpope/vim-fugitive'

-- fzf
-- Plug('junegunn/fzf', { 'do'= { -> fzf#install() } })
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'mhinz/vim-grepper'
-- Auto-close braces and scopes
-- Plug 'jiangmiao/auto-pairs'
-- PDF Viewer
-- Plug 'makerj/vim-pdf'
-- Image Viewer
-- Plug 'ashisha/image.vim'

-- Plug 'dracula/vim'
-- Plug 'ryanoasis/vim-devicons'
-- Plug 'SirVer/ultisnips'
-- Plug 'honza/vim-snippets'
-- Plug 'mhinz/vim-startify'
-- Plug 'liuchengxu/vim-clap'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'ayu-theme/ayu-vim' 
Plug 'drewtempelmeyer/palenight.vim'
Plug 'EdenEast/nightfox.nvim'
-- Plug 'vwxyutarooo/nerdtree-devicons-syntax'
--Plug 'tmhedberg/SimpylFold'  " code folding
-- Plug 'andviro/flake8-vim' " check code
-- Plug 'https://github.com/nvie/vim-flake8.git'
-- Plug 'https://github.com/tell-k/vim-autopep8.git'
Plug 'iamcco/markdown-preview.nvim'
Plug 'dense-analysis/ale'
-- Terminal
-- Plug 'kassio/neoterm'
-- Jupyter Notebook
Plug 'dccsillag/magma-nvim'
Plug 'untitled-ai/jupyter_ascending.vim'
-- Plug 'bfredl/nvim-ipy'
Plug 'hkupty/iron.nvim'
Plug 'GCBallesteros/jupytext.vim'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'GCBallesteros/vim-textobj-hydrogen'
Plug 'lewis6991/gitsigns.nvim'
-- for images in kitty terminal for jupyter
-- Plug 'jghauser/kitty-runner.nvim'

-- show indentation
Plug 'nvim-treesitter/nvim-treesitter' -- , {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'
-- show tabs
-- Plug 'akinsho/bufferline.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'sindrets/diffview.nvim'

-- firefox plugin
Plug 'glacambre/firenvim' -- , { 'do': { _ -> firenvim#install(0) } }

Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'rcarriga/nvim-dap-ui'
Plug 'sidebar-nvim/sections-dap'
-- sidebar with info about the open file
Plug 'sidebar-nvim/sidebar.nvim'
-- Plug 'romgrk/sidebar.nvim' " not yet merged version to sidebar
Plug 'preservim/tagbar'

vim.call('plug#end')

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

