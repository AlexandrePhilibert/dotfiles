require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Harpoon
    use 'ThePrimeagen/harpoon'

    -- Lualine
    use 'nvim-lualine/lualine.nvim'

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- Theme
    use("martinsione/darkplus.nvim")

    use("lukas-reineke/indent-blankline.nvim")

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'

    -- LSP Icons
    use 'onsails/lspkind.nvim'

    -- Pairs
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'

    -- Prettier
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    -- Git
    use 'lewis6991/gitsigns.nvim' 
end)
