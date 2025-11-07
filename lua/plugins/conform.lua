return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- php = { "pretty-php" },
			-- blade = { "blade-formatter" },
			javascript = { "prettierd" },
			css = { "prettierd" },
			html = { "prettierd" },
		},
	},
}
