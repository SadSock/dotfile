return {
    {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	cmd = "Telescope",
	config = require("configs.telescope"),
	dependencies = {
	    { "nvim-tree/nvim-web-devicons" },
	    { "nvim-lua/plenary.nvim" },
	    -- { "debugloop/telescope-undo.nvim" },
	    {"nvim-telescope/telescope-project.nvim"},
	    --{ "jvgrootveld/telescope-zoxide" },
	    -- { "nvim-telescope/telescope-frecency.nvim" },
	    { "nvim-telescope/telescope-live-grep-args.nvim" },
	    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
    },
}
