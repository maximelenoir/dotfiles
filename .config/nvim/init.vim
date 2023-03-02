set tabstop=4
set shiftwidth=4
set expandtab
lua require('plugins')
lua require('lspconfig').rust_analyzer.setup({})
