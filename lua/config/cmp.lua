local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  sources = cmp.config.sources(
  {
    { name = "nvim_lsp" },
  },
  {
    { name = "buffer" }
  }),
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),

    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
	cmp.select_next_item()
      elseif require("luasnip").expand_or_jumpable() then
	require("luasnip").expand_or_jump()
      else
	fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
	cmp.select_prev_item()
      elseif require("luasnip").jumpable(-1) then
	require("luasnip").jump(-1)
      else
	fallback()
      end
    end, { "i", "s" }),
  },
})
