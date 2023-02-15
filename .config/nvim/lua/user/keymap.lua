local opts = { silent = true, noremap = true }

-- Move line up/down
vim.keymap.set("n", "<A-j>", ":m +1<CR>", opts)
vim.keymap.set("n", "<A-k>", ":m -2<CR>", opts)
vim.keymap.set("v", "<A-j>", ":m'>+<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m-2<CR>gv=gv", opts)
vim.keymap.set("i", "<A-j>", "<Esc>:m+<CR>==gi", opts)
vim.keymap.set("i", "<A-k>", "<Esc>:m-2<CR>==gi", opts)
