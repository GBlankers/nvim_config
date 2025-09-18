-- Nvim theme setup
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

-- Colorize color names and hexes
require("colorizer").setup({
  lazy_load = true,
})

-- Bufferline to display buffers at the top of the window
require("bufferline").setup({})

require("todo-comments").setup({
  highlight ={
    multiline = false
  }
})

-- Statusline
require('lualine').setup({
  options = {
    theme = "material-stealth",
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'selectioncount'},
    lualine_c = {
      '%=', --[[ add your center compoentnts here in place of this comment ]]
    },
    lualine_x = { {function() return vim.fn.getcwd() end}, 'diagnostics', 'searchcount'},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
})
