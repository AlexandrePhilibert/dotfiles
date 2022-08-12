local function on_attach()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, { buffer = 0 })
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
    vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, { buffer = 0})
end

require("lspconfig").tsserver.setup {
    on_attach = on_attach,
}

require("lspconfig").rust_analyzer.setup {
    cmd = { "rust-analyzer" },
    on_attach = on_attach,
}

require("lspconfig").gopls.setup {
    on_attach = on_attach,
}
