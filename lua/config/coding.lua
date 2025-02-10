local vim = vim

-- Mason
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pylsp",
		"rust_analyzer",
		"gopls"
	},
})

-- lsp for neovim configs
require("neodev").setup({})

-- Nvim lsp
require("lspconfig").lua_ls.setup({})
require("lspconfig").pylsp.setup({
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = {
						'E501', -- lines too long
						'E241', -- multiple spaces
						'E226', -- no space around arithmetics
					},
				}
			}
		}
	}

})
require("lspconfig").rust_analyzer.setup({})
require("lspconfig").gopls.setup({})

-- Cmp
local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	sources = cmp.config.sources(
	{
		{ name = "nvim_lsp" },
	},
	{
		{ name = "buffer" },
	},
	{
		{ name = "path"},
	}),
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),

		["<CR>"] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		},

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
	},
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
})

-- Hexeditor
require("hex").setup()

