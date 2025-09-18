-- Ouline
require("outline").setup({
  outline_window = {
    position = 'left',
  }
})

-- Workspaces
require("workspaces").setup({
    hooks = {
        open = { "Telescope find_files" },
    }
})

local telescope = require("telescope")
telescope.setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    file_ignore_patterns = { "node_modules", "go/pkg", "output/build",
                             "bazel-cache"},
  },

  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
    file_browser = {
      hijack_netrw = false,
    }
  },
})
telescope.load_extension("fzf")
telescope.load_extension("workspaces")
telescope.load_extension("file_browser")

-- Terminal
require("toggleterm").setup({
  open_mapping = [[<C-t>]],
  insert_mappings = true,
  terminal_mappings = true,
  direction = 'float',
  float_opts = {
    border = 'curved'
  }
})
