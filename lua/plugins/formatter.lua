return {
  "stevearc/conform.nvim", -- Lightweight yet powerful formatter
  event = "BufWritePre", -- Load this plugin before saving a file

  opts = {
    format_on_save = true,

    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
      css = { "prettierd" },
      go = { "gofmt" },
      json = { "prettierd" },
      html = { "prettierd" },
      lua = { "stylua" },
      markdown = { "prettierd" },
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      sh = { "shfmt" },
    },
  },
}
