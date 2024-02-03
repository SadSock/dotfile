return function()
    local icons = {
	ui = require("utils.icons").get("ui"),
	misc = require("utils.icons").get("misc"),
	git = require("utils.icons").get("git", true),
	cmp = require("utils.icons").get("cmp", true),
    }

    local opts = {
	plugins = {
	    spelling = true,
	    presets = {
		operators = false,
		motions = false,
		text_objects = false,
		windows = false,
		nav = false,
		z = true,
		g = true,
	    },
	},

	icons = {
	    breadcrumb = icons.ui.Separator,
	    separator = icons.misc.Vbar,
	    group = "",
	},

	window = {
	    border = "none",
	    position = "bottom",
	    margin = { 1, 0, 1, 0 },
	    padding = { 1, 1, 1, 1 },
	    winblend = 0,
	},
	defaults = {
	    mode = { "n", "v" },
	    ["g"] = { name = "+goto" },
	    ["gs"] = { name = "+surround" },
	    ["]"] = { name = "+next" },
	    ["["] = { name = "+prev" },
	    ["<leader><tab>"] = { name = "+tabs" },
	    ["<leader>b"] = { name = "+buffer" },
	    ["<leader>c"] = { name = "+code" },
	    ["<leader>f"] = { name = "+file/find" },
	    ["<leader>g"] = { name = "+git" },
	    ["<leader>gh"] = { name = "+hunks" },
	    ["<leader>q"] = { name = "+quit/session" },
	    ["<leader>s"] = { name = "+search" },
	    ["<leader>u"] = { name = "+ui" },
	    ["<leader>w"] = { name = "+windows" },
	    ["<leader>x"] = { name = "+diagnostics/quickfix" },
	},
    }
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)

    require("utils").load_plugin("which-key", {
    })
end

