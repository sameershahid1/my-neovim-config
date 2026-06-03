-- LuaSnip configuration
require("luasnip.config").setup({
  kind_selector = {
    [":"] = "luasnip",
  },
})

require("luasnip.loaders.from_vscode").load {}

