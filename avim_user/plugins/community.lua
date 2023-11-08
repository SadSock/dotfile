return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim"},
  { import = "astrocommunity.colorscheme.onedarkpro-nvim"},


{
    "loctvl842/monokai-pro.nvim",
    config = function()


require("monokai-pro").setup({
  transparent_background = false,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  styles = {
    comment = { italic = false },
    type = { italic = false }, -- (preferred) int, long, char, etc
    storageclass = { italic = false }, -- static, register, volatile, etc
    structure = { italic = false }, -- struct, union, enum, etc
    parameter = { italic = false }, -- parameter pass in function
    annotation = { italic = false },
    tag_attribute = { italic = false }, -- attribute of tag in reactjs
  },
  filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false, -- turn off by default
    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    -- "which-key",
    "renamer",
    "notify",
    -- "nvim-tree",
    -- "neo-tree",
    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "default", -- default | pro
      context_start_underline = false,
    },
  },
  --@param c Colorscheme
  override = function(c)
            -- local file = io.open("fuck.txt","w")
            -- for k,v in pairs(c.editor) do
            --   file:write(k,"\n")
            -- end
          return {
                Cursor = {
      bg = c.base.white,
      fg = c.base.white,
      underline = true,
    }, -- character under the cursor
        }
    --Keyword = { fg = c.base.red, italic = styles.keyword.italic },
  end,
})

    end
},

}
