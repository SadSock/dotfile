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
	}
    local wk = require("which-key")
    wk.setup(opts)

    require("utils").load_plugin("which-key", {
    })
end
