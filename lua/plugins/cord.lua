return {
  {
    "vyfor/cord.nvim", -- Discord Rich Presence for Neovim
    build = ":Cord update",

    config = function()
      require("cord").setup({
        editor = {
          client = "lazyvim",
        },

        display = {
          theme = "catppuccin",
          flavor = "light",
        },

        idle = {
          enabled = false,
        },
      })
    end,
  },
}
