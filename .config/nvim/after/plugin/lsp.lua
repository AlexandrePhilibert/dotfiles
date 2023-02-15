local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')
local lspconfig = require("lspconfig")
local cmp_nvim_slp = require('cmp_nvim_lsp')

cmp.setup({
    completion = { completeopt = "menu,menuone,noinsert", keyword_length = 1 },
    snippet = {
        expand = function(args)
           luasnip.lsp_expand(args.body)
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

local capabilities = cmp_nvim_slp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

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

local servers = { 'tsserver', 'tailwindcss', 'svelte', 'gopls', 'clangd' }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
        on_attach = on_attach
    }
end

lspconfig.lua_ls.setup {
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

lspconfig.rust_analyzer.setup {
    cmd = { "rust-analyzer" },
    capabilities = capabilities,
    on_attach = on_attach,
}

