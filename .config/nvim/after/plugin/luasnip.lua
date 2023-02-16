local luasnip = require('luasnip')

luasnip.config.set_config {
    updateevents = 'TextChanged,TextChangedI'
}

require('luasnip.loaders.from_vscode').lazy_load({
    paths = { "~/.config/snippets" }
})
