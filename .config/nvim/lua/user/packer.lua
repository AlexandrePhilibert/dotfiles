require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'ThePrimeagen/harpoon'
end)
