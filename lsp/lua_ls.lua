return {
    cmd = {'lua-language-server'},

    filetypes = {'lua'},

    root_markets = { {'.luarc.json', '.luarc.jsonc'}, '.git'},

    settings = {
        lua = {
            runtime = {
                version = 'luajit',
            },
            diagnostics = {
                globals = {'vim'},
            },
        },
    },
}
