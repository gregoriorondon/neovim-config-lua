-- Mostrar números de línea
vim.opt.number = true

-- Soporte para colores
vim.opt.termguicolors = true 

-- vim.g.ayucolor = "dark"  -- Cambia a "dark", "mirage" o "light"
-- vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<cr>', {noremap = true})

-- Soporte de portapapeles
vim.opt.clipboard = "unnamedplus"

-- 
vim.wo.wrap = false

-- Codificación para español
vim.opt.encoding="utf-8"

-- Numeros de espacios que representa una tabulación
vim.o.tabstop = 4

-- Numeros de espacios en la indentacion
vim.o.shiftwidth = 4

-- convertir tabulaciones en espacios
vim.o.expandtab = true

-- 
vim.o.smartindent = true

-- Habilitar transparencia
vim.g.transparent_enabled = true

-- tecla de lider
vim.g.mapleader = ","

-- Habilitar cursor
vim.cmd [[set mouse=a]]

-- Resaltado de sintaxis para blade
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.blade.php",
  command = "set filetype=blade"
})

-- optionally enable 24-bit colour
vim.opt.termguicolors = true


