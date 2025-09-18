local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

-- VIM
map('i', 'jk', '<Esc>', defaults)
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })
map("n", "<leader>l", "<C-w>l", defaults)
map("n", "<leader>h", "<C-w>h", defaults)
map("n", "ç", "{", defaults)
map("n", "à", "}", defaults)
map("n", "<A-d>", "<C-d>", defaults)
map("n", "<A-u>", "<C-u>", defaults)

-- Bufferline
map('n', '<Tab>', ':BufferLineCycleNext<CR>', defaults)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', defaults)
map('n', '<Leader>x', ':bdelete<CR>', defaults)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', defaults)
map('n', '<leader>fw', ':Telescope live_grep<CR>', defaults)
map("n", "<A-f>", "yiw:Telescope live_grep default_text=<C-r>0<cr><esc>")
map("v", "<A-f>", "y:Telescope live_grep default_text=<C-r>0<cr><esc>")
map('n', '<leader>fp', ':Telescope workspaces<CR>', defaults)
map('n', '<leader>ft', ':TodoTelescope<CR>', defaults)
map('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR><esc>', defaults)

-- Outline
map('n', '<leader>oo', ':Outline<CR>', defaults)
map('n', '<leader>of', ':OutlineFocus<CR>', defaults)

-- LSP
map('n', '<leader>n', vim.diagnostic.goto_next)
map('n', '<leader>N', vim.diagnostic.goto_prev)

-- Enable CSV
map('n', '<leader>c,', ':CsvViewToggle <cr>', {desc="Toggle csv view delim=,", silent = true})
map('n', '<leader>c;', ':CsvViewToggle delimiter=;<cr>', {desc="Toggle csv view delim=;", silent = true})

 -- Hardtime
map('n', '<leader>th', ":Hardtime toggle<cr>", {desc="Toggle the hardtime plugin", silent = true})
