require('nvim-treesitter.configs').setup {
    ensure_installed = { 
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
