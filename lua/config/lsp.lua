-- Configuración de Mason
require("mason").setup()

-- Configuración de nvim-cmp
local cmp = require("cmp")
local cmp_luasnip = require("cmp_luasnip")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" }, -- Snippets
	}, {
		{ name = "buffer" },
	}),
})

-- Mapeos para el LSP
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true }
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
	vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
	vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
	vim.keymap.set("n", "<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, opts)
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
end


vim.diagnostic.config({
  virtual_text = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
    }
  },
  update_in_insert = false,
  underline = true,
  severity_sort = true,
})


-- Configuración de Mason-LSP y nvim-lspconfig
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls", -- Lua
		"html", -- HTML
		"cssls", -- CSS
		"tailwindcss", -- Tailwind CSS
		"intelephense",
		"phpactor",
		"emmet_language_server", -- Emmet
		"emmet_ls", -- Emmet
		"ts_ls", -- TypeScript y JavaScript
	},
	handlers = {
		-- Default handler
		function(server_name)
			require("lspconfig")[server_name].setup({
				on_attach = on_attach,
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
			})
		end,
	},
})
require('lspconfig').emmet_language_server.setup({
  filetypes = { "html", "php", "css", "scss", "less", "javascriptreact", "typescriptreact" },
})
