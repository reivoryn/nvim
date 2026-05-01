return {
  {
    "vyfor/cord.nvim", -- Discord Rich Presence for Neovim
    build = ":Cord update",

    config = function()
      require("cord").setup({
        editor = {
          client = "neovim",
        },

        display = {
          theme = "catppuccin",
          flavor = "light",
        },
      })
    end,
  },
}
