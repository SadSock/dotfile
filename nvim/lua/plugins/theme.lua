return {
	-- the colorscheme should be available when starting Neovim                                 
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme     
		priority = 1000, -- make sure to load this before all the other start plugins             
		config = function()
			-- load the colorscheme here 
			require("tokyonight").setup({

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
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
