-- local lsp = require('lspconfig')
-- local completion = require('completion')

-- local custom_attach = function()
--     completion.on_attach()
--     -- Python specifically isn't setting omnifunc correctly, ftplugin conflict
--     vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
-- end

-- lsp.pylsp.setup{on_attach=custom_attach}
-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').pylsp.setup{
    on_attach=on_attach,
    filetypes = {'python'},
    capabilities = capabilities,
    settings = {
        -- configurationSources = {"flake8"},
        -- formatCommand = {"black"},
        pylsp = {
            plugins = {
                -- jedi_completion = {fuzzy = true},
                -- jedi_completion = {eager=true},
                jedi_completion = {
                    include_params = true,
                },
                jedi_signature_help = {enabled = true},
                -- jedi = {
                    -- extra_paths = {'~/projects/work_odoo/odoo14', '~/projects/work_odoo/odoo14'},
                    -- environment = {"odoo"},
                -- },
                pyflakes={enabled=false},
                -- pylint = {args = {'--ignore=E501,E231', '-'}, enabled=true, debounce=200},
                -- pylsp_mypy={enabled=false},
                pycodestyle={
                    enabled=false,
                    ignore={'E501', 'E231'},
                    maxLineLength=120
                },
                mccabe = {
                    enabled=false,
                },
                yapf={
                    enabled=false
                }
            }
        }
    }
}
-- require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
vim.cmd [[autocmd BufWritePre *.py lua vim.lsp.buf.format()]]
