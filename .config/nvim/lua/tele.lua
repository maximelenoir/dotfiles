local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})

require('telescope').setup({
    defaults = {
        mappings = {
            n = {
                ['<C-d>'] = require('telescope.actions').delete_buffer
            },
            i = {
                ['<C-d>'] = require('telescope.actions').delete_buffer
            },
        },
    },
})
