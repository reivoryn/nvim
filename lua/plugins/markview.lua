return {
  "OXY2DEV/markview.nvim", -- A hackable markdown, Typst, latex, html(inline) & YAML previewer
  dependencies = {
    "saghen/blink.cmp",
  },
  ft = { "markdown", "tex" }, -- Load this plugin based on filetypes

  config = function()
    require("markview").setup({
      preview = {
        enable = true,
        filetypes = { "markdown", "tex" },
      },
      markdown = {
        enable = true,
      },
      latex = {
        enable = true,
      },
    })
  end,
}
