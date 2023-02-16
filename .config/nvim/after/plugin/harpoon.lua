local harpoon_ui = require("harpoon.ui")
local harpoon_mark = require("harpoon.mark")

local opts = { silent = true, noremap = true }

-- Harpoon
vim.keymap.set("n", "<leader>a", function()
	harpoon_mark.add_file()
end, opts)
vim.keymap.set("n", "<C-e>", function()
	harpoon_ui.toggle_quick_menu()
end, opts)

vim.keymap.set("n", "<leader>1", function()
	harpoon_ui.nav_file(1)
end, opts)
vim.keymap.set("n", "<leader>2", function()
	harpoon_ui.nav_file(2)
end, opts)
vim.keymap.set("n", "<leader>3", function()
	harpoon_ui.nav_file(3)
end, opts)
vim.keymap.set("n", "<leader>4", function()
	harpoon_ui.nav_file(4)
end, opts)
