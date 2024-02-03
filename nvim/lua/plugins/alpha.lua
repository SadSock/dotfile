return {
    {"goolord/alpha-nvim",
	lazy = true,
	event = "BufWinEnter",
	config = require("configs.alpha"),
    },
}
