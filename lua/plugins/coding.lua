return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "m4xshen/autoclose.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-path",
    "nmac427/guess-indent.nvim"
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
  }
}
