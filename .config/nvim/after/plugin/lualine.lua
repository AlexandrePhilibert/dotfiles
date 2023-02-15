require('lualine').setup {
    options = {
        theme = 'vscode',
        section_separators = '',
        component_separators = ''
    },
    sections = {
        lualine_c = { { 'filename', path = 1 } }
    }
}
