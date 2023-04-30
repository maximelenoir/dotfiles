vim.g.mapleader = ';'
vim.wo.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

require('plugins')
require('lsp')
require('tele')

vim.g.material_style = 'palenight'
vim.cmd('colorscheme material')

require('lualine').setup({
    options = {
        theme = 'material',
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {{ 'filename', path = 1 }, 'location', 'progress' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'buffers' },
    }
})

require('nvim-tree').setup({})

require('material').setup({
    plugins = {
        'nvim-cmp',
        'nvim-tree',
        'telescope',
    },
})

vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_prev, {})
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '<leader>bn', function() vim.cmd("bnext") end, {})
vim.keymap.set('n', '<leader>bp', function() vim.cmd("bprevious") end, {})
vim.keymap.set('n', '<C-n>', function() vim.cmd("bnext") end, {})
vim.keymap.set('n', '<leader>bd', function() vim.cmd("Bdelete") end, {})
vim.keymap.set('n', '<leader>tt', function() vim.cmd('NvimTreeToggle') end, {})
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], {})
