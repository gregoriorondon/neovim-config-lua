vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Abrir/Cerrar coc-explorer
-- vim.keymap.set('n', '<C-n>', '<Cmd>CocCommand explorer<CR>', { silent = true, noremap = true })

-- Abrir/Cerrar neotree
vim.keymap.set("n", "<C-n>", "<Cmd>Neotree toggle<CR>", { silent = true, noremap = true })

-- Abrir/Cerrar neotree
vim.keymap.set("n", "<C-f>", "<Cmd>lua require('conform').format()<CR>", { silent = true, noremap = true })
