require("indent_blankline").setup {
    buftype_exclude = { 'terminal' },
    char = '▏',
    filetype_exclude = { 'help', 'NvimTree', 'dashboard', 'packer', 'TelescopePrompt' },
    show_current_context = true,
    show_end_of_line = false,
    space_char_blankline = ' ',
    use_treesitter = true,
    show_trailing_blankline_indent = false
}
