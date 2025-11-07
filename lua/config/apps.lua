-- Cargar Lazy.nvim y configurar plugins
vim.g.mapleader = ","
vim.g.maplocalleader = ","
require("lazy").setup({
	spec = {
		-- { "LazyVim/LazyVim", import = "lazyvim.plugins" },
		-- import any extras modules here
		-- { import = "lazyvim.plugins.extras.lang.typescript" },
		-- { import = "lazyvim.plugins.extras.lang.json" },
		-- { import = "lazyvim.plugins.extras.ui.mini-animate" },
		-- rm -rf ~/.local/share/nvim/lazy/neo-tree.nvimrm -rf ~/.local/share/nvim/lazy/neo-tree.nvim{ import = "lazyvim.plugins.extras.editor.symbols-outline" },
		-- import/override with your plugins
		{ import = "plugins" },
	},
})
