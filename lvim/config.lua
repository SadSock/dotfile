-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--


vim.wo.relativenumber = true;

-- auto install treesitter parsers
lvim.builtin.treesitter.ensure_installed = {
  "cpp",
  "c" ,
  "markdown",
  "llvm",
  "bash",
  "lua",
  "python",
  "cmake",
  "make",
  "diff",
  "fish",
  "tablegen",
}

require("lvim.lsp.manager").setup("marksman")

lvim.plugins={
  {"folke/neodev.nvim"},

  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup { enabled = false }
    end,
  },
}

local osc52_opts ={
          max_length = 0,           -- Maximum length of selection (0 for no limit)
          silent = false,           -- Disable message on successful copy
          trim = false,             -- Trim surrounding whitespaces before copy
          tmux_passthrough = false, -- Use tmux passthrough (requires tmux: set -g allow-passthrough on)
        };

require("lvim.lsp.manager").setup("osc52", osc52_opts)

-- require('osc52').setup {
--  max_length = 0,           -- Maximum length of selection (0 for no limit)
--  silent = false,           -- Disable message on successful copy
--  trim = false,             -- Trim surrounding whitespaces before copy
--  tmux_passthrough = false, -- Use tmux passthrough (requires tmux: set -g allow-passthrough on)
-- }

-- vim.keymap.set('n', '<leader>y', require('osc52').copy_operator, {expr = true})
-- vim.keymap.set('n', '<leader>yy', '<leader>c_', {remap = true})
-- vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)
