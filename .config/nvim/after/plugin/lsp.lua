local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    experimental = {
        ghost_text = {
            hl_group = 'Hint',
        },
    },
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
        })
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    -- max_item_count: The maximum number of suggestions for the given source
    -- keyword_length: The number of character to type before suggestions start
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer', keyword_length = 5, max_item_count = 5 },
    })
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function on_attach(client, bufnr)
    local bufopts = { noremap = true, silent=true, buffer=bufnr }

    vim.keymap.set("n", "gh", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, bufopts)
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, bufopts)
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", bufopts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, bufopts)
end

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

lspconfig.tailwindcss.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

lspconfig.sumneko_lua.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

lspconfig.svelte.setup {}

lspconfig.rust_analyzer.setup {
    cmd = { "rust-analyzer" },
    capabilities = capabilities,
    on_attach = on_attach,
}

lspconfig.gopls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

