require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "pylsp", "rust_analyzer", "gopls"},
})

require("lspconfig").lua_ls.setup({})
require("lspconfig").pylsp.setup({})
require("lspconfig").rust_analyzer.setup({})
require("lspconfig").gopls.setup({})

vim.diagnostic.config({
	update_in_insert = true,
})
