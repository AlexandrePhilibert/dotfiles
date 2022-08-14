local prettier = require('prettier')

prettier.setup {
  -- prettierd is currently not working, using prettier instead
  -- bin = 'prettierd',
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  }
}
