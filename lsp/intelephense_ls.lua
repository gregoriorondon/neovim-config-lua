-- ~/.config/nvim/lua/lsp/php.lua
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('intelephense_ls', {
  cmd = { 'intelephense', '--stdio' },
  filetypes = { 'php', 'blade', 'blade.php' },
  root_markers = { 'composer.json', '.git', 'artisan' },
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000,
      },
      environment = {
        phpVersion = '8.2',
      },
      diagnostics = {
        enable = true,
      },
    },
  },
  capabilities = capabilities,
})

