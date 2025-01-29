return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
  },
  {
    "marko-cerovac/material.nvim"
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  }
}
