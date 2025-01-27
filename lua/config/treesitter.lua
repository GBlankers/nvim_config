require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "python", "markdown", "vim", "vimdoc"},
  highlight = {
    enable = true,
  }
})
