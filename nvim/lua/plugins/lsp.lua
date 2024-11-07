return{

    {
	"neovim/nvim-lspconfig",
	config = function()
	    local lspconfig = require('lspconfig')
	    lspconfig.clangd.setup {}
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
