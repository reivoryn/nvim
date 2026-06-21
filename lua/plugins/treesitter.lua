return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")

    ts.install({
      "bash",
      "css",
      "c",
      "cpp",
      "go",
      "html",
      "http",
      "json",
      "javascript",
      "lua",
      "markdown",
      "typescript",
      "tsx",
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })

    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
  end,
}
