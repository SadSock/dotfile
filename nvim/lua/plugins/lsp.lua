return{

    {
	"neovim/nvim-lspconfig",
	config = function()
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
		ensure_installed = {"clangd", "lua_ls"},
		automatic_installation = true,
	    handlers = nil})
	    local lspconfig = require('lspconfig')
	    lspconfig.clangd.setup {}
	    lspconfig.lua_ls.setup {}
	end,

    },
    {
	'dgagn/diagflow.nvim',
	-- event = 'LspAttach', This is what I use personnally and it works great
	opts = {
	    scope = 'line',
	    show_borders = false,
	}
    },

}
