require("colorizer").setup({
  lazy_load = true,
})

require("material").setup({
	plugins = {
		"gitsigns",
		"indent-blankline",
		"nvim-cmp",
		"nvim-web-devicons",
		"which-key"
	},
	lualine_style = "stealth",
})
vim.g.material_style = "oceanic"
vim.cmd('colorscheme material')

require("gitsigns").setup()
