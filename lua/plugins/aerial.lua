return {
  "stevearc/aerial.nvim", -- Neovim plugin for a code outline window
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

  config = function()
    require("aerial").setup({
      backends = { "lsp", "treesitter" },

      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,

      layout = {
        max_width = { 35, 0.2 },
        min_width = 35,
        default_direction = "left",
        placement = "edge",
        resize_to_content = true,
        preserve_equality = false,
        width = 35,
      },

      show_guides = true,

      guides = {
        mid_item = "├─",
        last_item = "└─",
        nested_top = "│ ",
        whitespace = "  ",
      },
    })
  end,
}
