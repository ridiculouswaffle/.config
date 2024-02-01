-- Set up lspconfig.
lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local navic = require("nvim-navic")

navic.setup {
  lsp = {
    auto_attach = true,
    preference = nil
  },
}

lspconfig.dartls.setup {
  on_attach = completion_callback,
  capabilities = capabilities,
  cmd = { "dart", "language-server", "--protocol=lsp" },
}

lspconfig.html.setup {
  on_attach = completion_callback,
  capabilities = capabilities,
  init_options = {
    configurationSection = { "html", "css", "javascript" },
	embeddedLanguages = {
      css = true,
	  javascript = true,
	},
	provideFormatter = true
  }
}

lspconfig.phpactor.setup {
  on_attach = completion_callback,
  capabilities = capabilities,
  cmd = { "phpactor.phar", "language-server" },
}

lspconfig.lua_ls.setup {
  on_attach = completion_callback,
  capabilities = capabilities,
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
              -- "${3rd}/luv/library"
              -- "${3rd}/busted/library",
            }
            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
            -- library = vim.api.nvim_get_runtime_file("", true)
          }
        }
      })

      client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    end
    return true
  end
}
