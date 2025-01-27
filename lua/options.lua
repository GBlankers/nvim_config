local vim = vim

-- set global options
local g = vim.g

g.mapleader = " "
g.maplocalleader = "²"

-- vim options
local opt = vim.opt
local o = vim.o

o.showmode = false
o.numberwidth = 2

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

