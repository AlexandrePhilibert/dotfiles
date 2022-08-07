
vim.cmd("hi SignColumn ctermbg=none")
vim.cmd("hi PMenu ctermfg=4 ctermbg=none")

-- Harpoon config

-- local function nnoremap(lhs, rhs opts)
-- 	vim.keymapset(lhs, rhs, opts)
-- end

local silent = { silent = true }

vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end, silent)
vim.keymap.set("n", "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)
vim.keymap.set("n", "<leader>tc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, silent)

vim.keymap.set("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end, silent)
vim.keymap.set("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end, silent)
vim.keymap.set("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end, silent)
vim.keymap.set("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end, silent)
