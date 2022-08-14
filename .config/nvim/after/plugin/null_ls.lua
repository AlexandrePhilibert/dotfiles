local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      -- vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.format({ async = true })<CR>")

      -- format on save
      -- vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format({ async = true })")
      vim.cmd("autocmd BufWritePost <buffer> Prettier")
      -- vim.api.nvim_create_autocmd("BufWritePost", {
      --     pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      --     callback = function() 
      --         vim.cmd("Prettier")
      --     end,
      -- })
    end

    if client.server_capabilities.documentRangeFormattingProvider then
      -- vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    end
  end,
})
