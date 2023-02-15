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
    use('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })

    -- Theme
    -- use 'martinsione/darkplus.nvim'
    use 'Mofiqul/vscode.nvim'

    use 'lukas-reineke/indent-blankline.nvim'

    -- Mason
    use 'williamboman/mason.nvim'

    -- LSP
    use 'hrsh7th/nvim-cmp'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    -- LSP Icons
    use 'onsails/lspkind.nvim'

    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    use { 'rcarriga/nvim-dap-ui',
        requires = {
            'mfussenegger/nvim-dap'
        }
    }

    -- Pairs
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'

    -- Prettier
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'

    -- Svelte
    use 'evanleck/vim-svelte'

    -- Terminal
    use { "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    }
end)
