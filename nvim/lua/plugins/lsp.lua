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
	    -- require("mason").setup()
	    require("mason").setup({
		-- install_root_dir = vim.fn.expand("$HOME/.local/share/mason"),
	    })
	end,

    },
    { "williamboman/mason-lspconfig.nvim",

	config = function()
	    require("mason-lspconfig").setup ({
		ensure_installed = {"lua_ls","clangd","neocmake","asm_lsp","marksman","bashls"},
		automatic_installation = { exclude = {"pyright","pylsp"} },
		-- automatic_installation = true,
	    handlers = nil})
	    local lspconfig = require('lspconfig')
	    lspconfig.bashls.setup {}
	    lspconfig.lua_ls.setup {}
	    lspconfig.clangd.setup {}
	    lspconfig.neocmake.setup{}
	    lspconfig.asm_lsp.setup{}
	    lspconfig.marksman.setup{}
	    lspconfig.pylsp.setup{

		settings = {
		    pylsp = {
			plugins = {
			    pycodestyle = {
				ignore = {'W391'},
				maxLineLength = 100
			    }
			}
		    }
		}
	    }
	    -- lspconfig.pyright.setup{}
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
