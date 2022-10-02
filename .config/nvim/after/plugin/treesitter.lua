require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "c",
        "cpp",
        "javascript",
        "typescript",
        "tsx",
        "rust",
        "html",
        "json",
        "toml",
        "markdown",
        "go",
        "python",
        "lua"
    },
    highlight = {
        enable = true
    }
}
