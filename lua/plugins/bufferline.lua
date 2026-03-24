return {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        -- Extraemos la paleta de colores activa de onedark
        local colors = require("onedark.colors")

        require("bufferline").setup({
            highlights = {
                -- Fondo de la barra donde no hay pestañas
                fill = {
                    bg = colors.bg_d,
                },
                -- Pestaña activa
                buffer_selected = {
                    fg = colors.fg,
                    bg = colors.bg0,
                    bold = true,
                },
                -- Pestañas inactivas
                background = {
                    fg = colors.light_grey,
                    bg = colors.bg1,
                },
                -- Separadores
                separator = {
                    fg = colors.bg_d,
                    bg = colors.bg1,
                },
                -- El indicador lateral de la pestaña activa
                indicator_selected = {
                    fg = colors.blue,
                    bg = colors.bg0,
                },
                -- Botón de cerrar cuando el búfer es visible (ej. tienes Neo-tree abierto)
                close_button_visible = {
                    fg = colors.light_grey,
                    bg = colors.bg1,
                },
                -- El fondo de la pestaña cuando es visible pero no tienes el cursor ahí
                buffer_visible = {
                    fg = colors.light_grey,
                    bg = colors.bg1,
                },
                close_button = {
                    fg = colors.light_grey,
                    bg = colors.bg1, -- Debe ser igual al bg de 'background'
                },
            },
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        -- text = "Explorardor", -- El título que aparecerá sobre Neo-tree
                        -- text_align = "center",  -- Puede ser "left", "center" o "right"
                        -- separator = true,       -- Pone una línea divisoria entre el offset y las pestañas
                    }
                },
                -- separator_style = "slant", -- Opcional: cambia la forma de las pestañas
                -- -- ... otras opciones
            }
        })
    end,
}
