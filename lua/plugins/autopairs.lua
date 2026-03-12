return {
  "echasnovski/mini.pairs", -- Automatically manage character pairs
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer
  version = "*", -- Always use the latest version

  opts = {
    modes = {
      insert = true,
      command = false,
      terminal = false,
    },

    mappings = {
      ["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
      ["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
      ["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },
      [")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
      ["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
      ["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },
      ['"'] = {
        action = "closeopen",
        pair = '""',
        neigh_pattern = "[^\\].",
        register = { cr = false },
      },

      ["'"] = {
        action = "closeopen",
        pair = "''",
        neigh_pattern = "[^%a\\].",
        register = { cr = false },
      },

      ["`"] = {
        action = "closeopen",
        pair = "``",
        neigh_pattern = "[^\\].",
        register = { cr = false },
      },
    },
  },
}
