local vim = vim
local g = vim.g
local opt = vim.opt
local o = vim.o

-- Map leader keys
g.mapleader = " "
g.maplocalleader = "²"

-- Show the mode in the command bar
o.showmode = false

-- Search ignores cases when lowercase search
opt.ignorecase = true
opt.smartcase = true

-- Color fixes
opt.termguicolors = true

-- Show status line in non active windows
opt.laststatus = 2

-- Longer lines will only wrap at word boundaries
opt.linebreak = true

-- cursor does not go below 10 lines of the bottom
opt.scrolloff = 10

-- Split windows always right and below
o.splitbelow = true
o.splitright = true

-- Tab options
o.expandtab = false
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

-- Show numbers, lsp status in the left line
opt.number = true
o.numberwidth = 3
opt.signcolumn = "yes"

-- Show line where the cursor is
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

-- Auto line break comments at 80 characters limit
opt.textwidth = 80
opt.formatoptions = "c"
