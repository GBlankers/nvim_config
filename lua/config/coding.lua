local vim = vim

-- Mason
require("mason").setup()

-- Nvim lsp
vim.lsp.enable("lua_ls");
vim.lsp.enable("pylsp")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("gopls")
-- vim.lsp.enable("clangd")

-- Blink cmp
require("blink.cmp").setup({
	keymap = {
		preset = 'none',
		['<Up>'] = { 'select_prev', 'fallback'},
		['<Down>'] = { 'select_next', 'fallback'},
		['<S-Tab>'] = { 'select_prev', 'fallback'},
		['<Tab>'] = { 'select_next', 'fallback'},
		['<CR>'] = { 'select_and_accept', 'fallback' },
	},
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
		}
	},
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},
	fuzzy = { implementation = "prefer_rust" },
	signature = { enabled = true }
})

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"python",
		"go",
		"rust",
		"markdown",
		"json",
		"vim",
		"vimdoc",
		"bash",
		"asm",
		"cpp",
		"csv",
		"diff",
		"dockerfile",
		"make",
		"xml",
		"yaml",
		"toml"
	},
	highlight = {
		enable = true,
	}
})

-- Autoclose brackets
require("autoclose").setup()

-- Indentation helpers
require("ibl").setup()
require("guess-indent").setup({})

-- Gitsigns
require("gitsigns").setup()

-- Surround brackets
require("nvim-surround").setup({
	highlight = {
		duration = 500,
	}
})

-- Vim config
vim.diagnostic.config({
	update_in_insert = true,
	virtual_text = false,
	virtual_lines = true,
})

-- Hexeditor
require("hex").setup()

