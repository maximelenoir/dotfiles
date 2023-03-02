local on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<C-i>', vim.lsp.buf.format, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<space>', vim.lsp.buf.hover, buftopts)
end

require('lspconfig').rust_analyzer.setup({
    on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {}
    }
})
