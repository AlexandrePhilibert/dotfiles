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
   
    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'

    -- LSP Icons
    use 'onsails/lspkind.nvim'
end)
