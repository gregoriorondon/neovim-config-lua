vim.lsp.enable('blade_ls')
vim.lsp.enable('laravel_ls')
-- vim.lsp.enable('html_ls')
vim.lsp.enable('emmet_ls')
vim.lsp.enable('intelephense_ls')
vim.lsp.enable('tailwindcss_ls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
      local client = vim.lsp.get_client_by_id(ev.data.client_id)
--       if client:supports_method('textDocument/completion') then
--           vim.opt.completeopt = {'menu', 'menuone', 'noinsert', 'fuzzy', 'popup'}
          -- vim.lsp.completion.enable(true, client.id, env.buf, { autotrigger = true})
--           vim.keymap.set('i', '<C-Space>', function()
--               vim.lsp.completion.get()
--           end)
--       end
  end,
})
-- Diagnostics
vim.diagnostic.config({
  -- Use the default configuration
  -- virtual_lines = true

  -- Alternatively, customize specific options
  virtual_lines = {
    -- Only show virtual line diagnostics for the current cursor line
    current_line = true,
  },
})
