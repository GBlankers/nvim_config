local vim = vim
local g = vim.g
local opt = vim.opt
local o = vim.o

g.mapleader = " "
g.maplocalleader = "²"

o.showmode = false
o.numberwidth = 3

opt.termguicolors = true
opt.laststatus = 2
opt.linebreak = true
opt.scrolloff = 10
opt.signcolumn = "yes"
o.splitbelow = true
o.splitright = true

o.expandtab = false
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

opt.number = true
opt.cursorline = true

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevelstart = 1
opt.foldnestmax = 1

-- Leading/trailing characters
opt.list = true
opt.listchars = { tab = '>-', trail = '$' }

-- Show colored line at 80 characters
opt.colorcolumn = "81"

