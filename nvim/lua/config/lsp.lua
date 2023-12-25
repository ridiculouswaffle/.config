-- Set up lspconfig.
lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.dartls.setup {
  on_attach = completion_callback,
  capabilities = capabilities,
  cmd = { "dart", "language-server", "--protocol=lsp" },
}
