return {
  "mistweaverco/kulala.nvim", -- A fully-featured HTTP-client interface for Neovim
  ft = { "http", "rest" }, -- Load this plugin based on filetypes

  opts = {
    global_keymaps = true,
    global_keymaps_prefix = "<leader>k",
    kulala_keymaps_prefix = "",

    ui = {
      display_mode = "float",
      winbar = true,

      win_opts = {
        title = " Kulala ",
        title_pos = "center",
      },
    },

    {
      global_keymaps = {
        ["Replay The Last Request"] = {
          "<leader>kr",
          function()
            require("kulala").replay()
          end,
          ft = { "http", "rest" },
        },

        ["Send All Requests"] = {
          "<leader>ka",
          function()
            require("kulala").run_all()
          end,
          mode = { "n", "v" },
          ft = "http",
        },

        ["Send Request"] = {
          "<leader>ks",
          function()
            require("kulala").run()
          end,
          mode = { "n", "v" },
          desc = "Send request",
        },

        ["Open Kulala"] = {
          "<leader>ko",
          function()
            require("kulala").open()
          end,
          ft = { "http", "rest" },
        },

        ["Open Scratchpad"] = {
          "<leader>kp",
          function()
            require("kulala").replay()
          end,
          ft = { "http", "rest" },
        },
      },
    },
  },
}
