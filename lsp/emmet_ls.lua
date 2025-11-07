local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('emmet_ls', {
  cmd = { "emmet-ls", "--stdio" },
  filetypes = {
    "astro",
    "css",
    "eruby",
    "html",
    "htmlangular",
    "htmldjango",
    "javascriptreact",
    "less",
    "pug",
    "sass",
    "scss",
    "svelte",
    "templ",
    "typescriptreact",
    "vue",
    "blade",
    "blade.php",
    "php",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true, -- opcional, activa soporte BEM
      },
    },
  },
  settings = {
    emmet = {
      showExpandedAbbreviation = "always",
      showAbbreviationSuggestions = true,
      includeLanguages = {
        blade = "html",
        ["blade.php"] = "html",
        php = "html",
        javascript = "javascriptreact",
        typescript = "typescriptreact",
      },
      syntaxProfiles = {
        html = { selfClosingStyle = "xhtml" },
      },
      variables = {},
    },
  },
  capabilities = capabilities,
})
