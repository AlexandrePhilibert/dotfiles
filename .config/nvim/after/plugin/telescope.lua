local telescope = require('telescope');

local opts = { silent = true, noremap = true }

telescope.setup {
    pickers = {
        find_files = {
            -- find hidden files expect for .git
            find_command = { 'rg', '--files', '--hidden', '-g', '!.git' }
        }
    }
}

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>", opts)
