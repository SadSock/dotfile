return {
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	--config = require("configs.lualine"),

	opts =  {options = {theme = 'auto'},}
    }

}
