return {
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	lazy = true,
	event = "VimEnter",
	--event = { "BufReadPost", "BufAdd", "BufNewFile" },
	--config = require("configs.lualine"),
	config = function()
	    require("configs.lualine").setup()
	end,
	--opts =  {options = {theme = 'auto'},}
    }

}
