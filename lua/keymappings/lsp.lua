-- neovim LSP Configuration
-- require('nvim-')

-- Enable Tab / Shift Tab to cycle completion options
vim.cmd([[
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    let g:completion_enable_fuzzy_match = 1
    set completeopt=menuone,noinsert,noselect
]])

local km = require('keymappings.keymappings')

km.map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
km.map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
km.map('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
km.map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
km.map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
km.map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
km.map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
km.map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
km.map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
