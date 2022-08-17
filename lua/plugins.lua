
-- You must run this or `:PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
-- :PackerCompile
-- Remove any disabled or unused plugins
-- :PackerClean
-- Clean, then install missing plugins
-- :PackerInstall
-- Clean, then update and install plugins
-- :PackerUpdate
-- Perform `PackerUpdate` and then `PackerCompile`
-- :PackerSync
-- Loads opt plugin immediately
-- :PackerLoad completion-nvim ale

vim.cmd [[packadd packer.nvim]]
-- autoload new plugins on startup
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])


-- Plugins definition goes here
return require('packer').startup(function(use)

    -- neovim system plugins (not directly visible)
    use {
        'wbthomason/packer.nvim',
        opt = true
    } -- Packer can manage itself as an optional plugin

    -- color scheme plugins
    use {'EdenEast/nightfox.nvim'} -- install nightfox color-scheme
    use {'ap/vim-css-color'} -- preview css colors
    -- use {'ryanoasis/vim-devicons'}    -- cool icons
    use {'kyazdani42/nvim-web-devicons'}
    use {
        'akinsho/bufferline.nvim',
        tag="v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    } -- bring some GUI estetics
    use {"rcarriga/nvim-notify"}
    -- use {"mfussenegger/nvim-ts-hint-textobject"} -- Treesitter hint textobject

    -- GUI plugins (status line, dashboard, ...  )
    use {"SmiteshP/nvim-gps"}
    use { -- Creates a balzing fast and easy to conf. status line
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    use {'glepnir/dashboard-nvim'} -- Show a nice startup dashboard
    use {'andymass/vim-matchup'} -- highlight, navigate, and operate on sets of matching text

    -- Search engine
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {'BurntSushi/ripgrep'}
    use {'sharkdp/fd'}

    use {'kevinhwang91/nvim-bqf', ft = 'qf'}  -- make nvims quickfix window better.

    use {'Yggdroot/indentLine'}  -- use indentLine during codeing
    use {'jiangmiao/auto-pairs'} -- insert or delete brackets, parens, quotes in pair
    -- use {'neoclide/coc.nvim', branch = 'release'}

    -- codeing
    use {'preservim/tagbar'} -- browse the tags of the current file (needs "sudo apt install exuberant-ctags")
    -- use {'tpope/vim-commentary'} -- For Commenting gcc & gc
    -- use {'SirVer/ultisnips', requirescode = 'honza/vim-snippets'} -- add snippets
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    } -- code highlighting

    -- add a file explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons' -- optional, for file icon
        }
    }

    -- spell checker
    use {'lewis6991/spellsitter.nvim'}

    -- git plugins
    use {'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'} -- git diff tool
    -- use {'APZelos/blamer.nvim'} -- git blame plugin like VS-Code git_lense
    use {'lewis6991/gitsigns.nvim'} -- git decorations + git blame 

    -- python plugins
    -- use {'psf/black'}
    use {'neovim/nvim-lspconfig'}
    
    -- lsp lines
    use({
        -- "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        'Maan2003/lsp_lines.nvim',
        config = function()
            require("lsp_lines").setup()
        end,
    })
    -- Lua
    use {
        "folke/lsp-trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
        require("trouble").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            }
        end
    }

    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use 'folke/tokyonight.nvim'
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'nvim-lua/completion-nvim'
    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            }
        end
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- For luasnip users.
    -- use 'L3MON4D3/LuaSnip'
    -- use 'saadparwaiz1/cmp_luasnip'

    -- For ultisnips users.
    -- use 'SirVer/ultisnips'
    -- use 'quangnguyen30192/cmp-nvim-ultisnips'

    -- For snippy users.
    -- use 'dcampos/nvim-snippy'
    -- use 'dcampos/cmp-snippy'
    
 	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    
    use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

end)
