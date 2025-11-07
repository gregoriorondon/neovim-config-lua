local cmp = require('cmp')
local luasnip = require('luasnip')
require("luasnip.loaders.from_snipmate").lazy_load({
    paths = { "~/.config/nvim/snippets" }
})
cmp.setup({
    -- 1. Mapeos de Teclas
    mapping = cmp.mapping.preset.insert({
        -- Mostrar el menú de completado manualmente
        ['<C-Space>'] = cmp.mapping.complete(),
        -- Cerrar el menú
        ['<C-e>'] = cmp.mapping.abort(),
        -- Seleccionar el siguiente/anterior elemento en la lista
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        -- Aceptar la selección actual
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        -- Navegación para snippets (si usas LuaSnip)
        ['<Tab>'] = cmp.mapping(function(fallback)
            if luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),

    -- 2. Fuentes de completado
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },  -- La fuente CLAVE que usa tu lua-language-server
        { name = 'luasnip' },   -- Fuente para snippets
        { name = 'buffer' },    -- Fuentes adicionales
        { name = 'path' },
    }),
    completion = {
        keyword_pattern = [[[@a-zA-Z_]\k*]],
    },
    -- 3. Otras configuraciones
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    experimental = {
        ghost_text = {
            enable = true, -- Muestra la sugerencia en línea (como GitHub Copilot)
        },
    },
})

-- Configuración para snippets de LuaSnip (si lo instalaste)
luasnip.config.setup({})
