return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
  },
  {
    'navarasu/onedark.nvim'
  }
}
