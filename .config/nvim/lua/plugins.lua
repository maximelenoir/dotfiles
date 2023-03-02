return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim' } } }
end)
