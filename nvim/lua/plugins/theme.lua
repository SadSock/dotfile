return {
    -- the colorscheme should be available when starting Neovim                                 
    {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	config = function()
	    require("monokai-pro").setup({
		transparent_background = false,
		terminal_colors = true,
		devicons = true, -- highlight the icons of `nvim-web-devicons`
		styles = {
		    comment = { italic = false },
		    keyword = { italic = false }, -- any other keyword
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
		    "which-key",
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
		---@param c Colorscheme
		override = function(c)
		    return {
			Function = { fg = c.base.green, bold = true }
		    }
		end,
	    })
	end
    },
    -- tokyonight
    {
	"folke/tokyonight.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme     
	priority = 1000, -- make sure to load this before all the other start plugins             
	opts = {
	    --	    style = "moon",
	    styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = false },
		keywords = { italic = false, bold = false},
		functions = {bold = true},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	    },
	    on_highlights = function(hl, c)
		hl.Visual = { bg = c.bg_visual, bold = true} -- Visual mode selection
		hl.VisualNOS = { bg = c.bg_visual, bold = true} -- Visual mode selection when vim is "Not Owning the Selection".
		-- Illuminate
		--hl.illuminatedWord = { bg = c.fg_gutter, underline = true }
		--hl.illlluminatedCurWord = { bg = c.fg_gutter, underline = true, bold = true }
		--hl.IlllluminatedWordText = { bg = c.fg_gutter, underline = true }
		--hl.IlllluminatedWordRead = { bg = c.fg_gutter, underline = true }
		--hl.IlllluminatedWordWrite = { bg = c.fg_gutter, underline = true }
	    end,
	},
    },
    --onedark
    {
	'navarasu/onedark.nvim',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme     
	priority = 1000, -- make sure to load this before all the other start plugins             
	opts={
	    -- Main options --
	    style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
	    transparent = false,  -- Show/hide background
	    term_colors = true, -- Change terminal color as per the selected theme style
	    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
	    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

	    -- toggle theme style ---
	    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

	    -- Change code style ---
	    -- Options are italic, bold, underline, none
	    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
	    code_style = {
		comments = 'none',
		keywords = 'none',
		functions = 'bold',
		strings = 'none',
		variables = 'none'
	    },

	    -- Lualine options --
	    lualine = {
		transparent = false, -- lualine center bar transparency
	    },

	    -- Custom Highlights --
	    colors = {}, -- Override default colors
	    highlights = {}, -- Override highlight groups

	    -- Plugins Config --
	    diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true,   -- use undercurl instead of underline for diagnostics
		background = true,    -- use background color for virtual text
	    },
	},
    },
    -- catppuccin
    {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	config = require("configs.catppuccin"),
    },
}
