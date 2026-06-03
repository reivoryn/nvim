return {
  "Saghen/blink.cmp", -- Performant, batteries-included completion plugin
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer
  version = "*", -- Always use the latest version

  opts = {
    completion = {
      menu = {
        border = "single",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None", -- Highlighting settings for the menu
      },

      documentation = {
        auto_show = true,

        window = {
          border = "single",
          scrollbar = false,
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:FloatBorder,EndOfBuffer:FloatBorder",
        },
      },

      list = {
        max_items = 8,

        selection = {
          preselect = true,
          auto_insert = true,
        },

        cycle = {
          from_bottom = true,
          from_top = true,
        },
      },
    },
  },
}
