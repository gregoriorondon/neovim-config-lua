require('config.inicio')
require('config.apps')
require('config.configlualine')
-- require('config.autoclose').setup()
require('Comment').setup()
require("colorizer").setup()
require('config.cmp')
require('config.lsp')
require('config.keymap')

-- Configuración básica de Neovim
require('config.config')

-- Guardar vista solo si el buffer tiene un nombre de archivo y es de tipo normal
vim.api.nvim_create_autocmd("BufWinLeave", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    if vim.bo[buf].buftype == "" and vim.api.nvim_buf_get_name(buf) ~= "" then
      vim.cmd("silent! mkview 1")
    end
  end,
})

-- Cargar vista solo si aplica a archivos normales
vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    if vim.bo[buf].buftype == "" and vim.api.nvim_buf_get_name(buf) ~= "" then
      pcall(vim.cmd, "silent! loadview 1")
    end
  end,
})

