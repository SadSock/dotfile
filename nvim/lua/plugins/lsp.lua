return{ 

	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.clangd.setup {}
		end,

	},

	-- 提供 GUI 安装LSP的插件
	{
		"williamboman/mason.nvim",
		build = function()
			vim.cmd("MasonUpdate")
		end,
		config = function()
			require("mason").setup()
		end,

	},
	{ "williamboman/mason-lspconfig.nvim",

	config = function()
		require("mason-lspconfig").setup ({
			ensure_installed = {"clangd"},
			automatic_installation = true,
			handlers = nil})
		end,

	},

}
