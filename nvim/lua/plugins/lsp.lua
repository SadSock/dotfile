return{

    {
	"neovim/nvim-lspconfig",
	    dependencies = {
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
            },
            opts = { lsp = { auto_attach = true } }
        }
    },
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
