local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'wbthomason/packer.nvim',
    { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'onsails/lspkind.nvim',
    { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani43/nvim-web-devicons' } },
    { 'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    'marko-cerovac/material.nvim',
    'famiu/bufdelete.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
        'folke/trouble.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {
            modes = {
                diagnostics = {
                    auto_open = true,
                    auto_close = false,
                }
            }
        },
    },
    'sindrets/diffview.nvim',
})