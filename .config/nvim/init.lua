vim.g.material_style = 'palenight'
vim.cmd('colorscheme material')
vim.g.mapleader = ';'
vim.wo.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

vim.keymap.set('n', 'gE', vim.diagnostic.goto_prev, bufopts)
vim.keymap.set('n', 'ge', vim.diagnostic.goto_next, bufopts)

require('plugins')
require('lsp')
require('tele')
