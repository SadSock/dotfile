return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
--        "mlir",
        "cpp",
        "llvm",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "tablegen",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

}
