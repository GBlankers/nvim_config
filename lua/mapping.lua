local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

-- VIM
map('i', 'jk', '<Esc>', defaults)
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

-- Bufferline
map('n', '<Tab>', ':BufferLineCycleNext<CR>', defaults)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', defaults)
map('n', '<Leader>x', ':bdelete<CR>', defaults)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', defaults)
map('n', '<leader>fw', ':Telescope live_grep<CR>', defaults)
map('n', '<M-f>', ':Telescope find_files<CR>', defaults)

-- Outline
map('n', '<leader>o', ':Outline<CR>', defaults)
