local M = {}

M.config = function()
  lvim.plugins = {
    {
      "folke/todo-comments.nvim",
      event = "BufRead",
      config = function()
        require("config.todo-comments").config()
      end,
    },
    --------------
    -- 快速编辑 --
    --------------
    {
      "mg979/vim-visual-multi",
      keys = { "<C-n>", { "v", "<C-n>" }, "<C-S-L>", { "v", "<C-S-L>" }, "ma", { "v", "ma" } },
      setup = function()
        require("setup.visual-multi").setup()
      end,
      config = function()
        require("config.visual-multi").config()
      end,
    },
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      config = function()
        require("telescope").load_extension("live_grep_args")
        vim.api.nvim_set_keymap("n", "<C-S-F>", "<CMD>Telescope live_grep_args<CR>", { noremap = true })
      end,
    },
--    {
--      "nvim-telescope/telescope-live-grep-args.nvim",
--      keys = { "<C-S-F>" },
--      config = function()
--        require("config.telescope-live-grep-args").config()
--      end,
--    },

  }
end

return M
