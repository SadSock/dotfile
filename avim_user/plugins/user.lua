return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --

  { "max397574/better-escape.nvim",
  enabled = false },
  {"windwp/nvim-autopairs",
  enabled = false},

  {"nvim-neo-tree/neo-tree.nvim",
  enabled = false},
  
  {
    "AstroNvim/astrotheme",
    -- event = "BufRead",
    config = function()
      require("astrotheme").setup({
        style = {
          transparent = false,         -- Bool value, toggles transparency.
          inactive = true,             -- Bool value, toggles inactive window color.
          float = true,                -- Bool value, toggles floating windows background colors.
          neotree = true,              -- Bool value, toggles neo-trees background color.
          border = true,               -- Bool value, toggles borders.
          title_invert = true,         -- Bool value, swaps text and background colors.
          italic_comments = false,      -- Bool value, toggles italic comments.
          simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
        },


        highlights = {
          global = {             -- Add or modify hl groups globally, theme specific hl groups take priority.
          modify_hl_groups = function(hl, c)
            Keyword = { fg = c.syntax.purple, bg = c.none, bold = true }
          end,
        },
      },

    })

  end,
},
}
