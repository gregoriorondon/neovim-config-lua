-- Cargar Lazy.nvim y configurar plugins
require("lazy").setup({
	-- ==========================
	-- =========Temas============
	-- ==========================
	{ "ayu-theme/ayu-vim" },
	{ "folke/tokyonight.nvim", lazy = false },
	{ "ellisonleao/gruvbox.nvim" },
	{
		"rakr/vim-one",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme one")
		end,
		-- opts = {},
	},
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{ "jwalton512/vim-blade" },

	-- ==========================
	-- ======AUTOCOMPLETADO======
	-- ==========================
	{
		"neoclide/coc.nvim",
		branch = "master",
		build = "npm ci",
		config = function()
			vim.cmd([[
	       inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"
	     ]])
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("config.lsp")
		end,
	},
	{
		"mason-org/mason.nvim",
		cmd = "Mason",
		opts = {
			ensure_installed = {
				"phpactor",
				"intelephense",
				"lua_ls",
				"cssls",
				"emmet_language_server",
				"emmet_ls",
				"html",
				"stylua",
			},
		},
	},
	-- ==========================
	-- ======PROGRAMACIÓN========
	-- ==========================
	{
		"numToStr/Comment.nvim",
	},
	-- ======FORMATEADOR=========
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"stevearc/conform.nvim",
		dependencies = { "mason.nvim" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				php = { "pint" },
				blade = { "blade-formatter" },
				javascript = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
			},
		},
	},
	-- ========COLORES CSS=======
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = { -- set to setup table
		},
	},
	-- ==========================
	-- =========MARKDOWN=========
	-- ==========================

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	-- ==========================
	-- =======INTERFAZ UI========
	-- ==========================
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"xiyaowong/transparent.nvim",
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		lazy = false, -- neo-tree will lazily load itself
		---@module "neo-tree"
		---@type neotree.Config?
		opts = {
			-- fill any relevant options here
		},
	},
})
