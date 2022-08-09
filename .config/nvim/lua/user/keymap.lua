local opts = { silent = true }

-- Harpoon
vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end, opts)
vim.keymap.set("n", "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, opts)
vim.keymap.set("n", "<leader>tc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, opts)

vim.keymap.set("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end, opts)
vim.keymap.set("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end, opts)
vim.keymap.set("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end, opts)
vim.keymap.set("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end, opts)

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope help_tags<CR>", opts)
