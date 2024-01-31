return {
    -- the colorscheme should be available when starting Neovim                                 
    {
	"folke/tokyonight.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme     
	priority = 1000, -- make sure to load this before all the other start plugins             
	opts = {

	    styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = false },
		keywords = { italic = false, bold = true},
		functions = {bold = true},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	    },
	},
    },

    -- catppuccin
    {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	opts = {
	    no_italic = true,
	    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
	    comments = { "italic" }, -- Change the style of comments
	    conditionals = { "italic" },
	    loops = {},
	    functions = {"bold"},
	    keywords = {},
	    strings = {},
	    variables = {},
	    numbers = {},
	    booleans = {},
	    properties = {},
	    types = {},
	    operators = {},
	},
	integrations = {
	    aerial = true,
	    alpha = true,
	    cmp = true,
	    dashboard = true,
	    flash = true,
	    gitsigns = true,
	    headlines = true,
	    illuminate = true,
	    indent_blankline = { enabled = true },
	    leap = true,
	    lsp_trouble = true,
	    mason = true,
	    markdown = true,
	    mini = true,
	    native_lsp = {
		enabled = true,
		underlines = {
		    errors = { "undercurl" },
		    hints = { "undercurl" },
		    warnings = { "undercurl" },
		    information = { "undercurl" },
		},
	    },
	    navic = { enabled = true, custom_bg = "lualine" },
	    neotest = true,
	    neotree = true,
	    noice = true,
	    notify = true,
	    semantic_tokens = true,
	    telescope = true,
	    treesitter = true,
	    treesitter_context = true,
	    which_key = true,
	},
    },
},
}
