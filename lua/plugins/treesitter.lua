return {
  "nvim-treesitter/nvim-treesitter", -- Treesitter configurations and abstraction layer
  build = ":TSUpdate", -- Command to run after the plugin is installed to update Treesitter parsers
  commit = "42fc28ba918343ebfd5565147a42a26580579482", -- Latest releases had so many breaking changes
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,

  opts = {
    ensure_installed = {
      "bash",
      "css",
      "html",
      "http",
      "json",
      "javascript",
      "lua",
      "markdown",
      "typescript",
      "tsx",
    },

    highlight = { enable = true },
    indent = { enable = false },
  },
}
