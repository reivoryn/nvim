return {
  "L3MON4D3/LuaSnip", -- Snippet engine
  dependencies = { "rafamadriz/friendly-snippets" },
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer
  version = "v2.*", -- Specifies the compatible version of the plugin

  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
