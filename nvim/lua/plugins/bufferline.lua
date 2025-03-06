return{ {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
	options = {
	    diagnostics = "nvim_lsp",
	    always_show_bufferline = true,
	    offsets = {
		{
		    filetype = "neo-tree",
		    text = "Neo-tree",
		    highlight = "Directory",
		    text_align = "left",
		},
	    },
	},
    },
    config = function(_, opts)
	opts.options.style_preset = require("bufferline").style_preset.no_italic
	require("bufferline").setup(opts)
	-- Fix bufferline when restoring a session
	vim.api.nvim_create_autocmd("BufAdd", {
	    callback = function()
		vim.schedule(function()
		    pcall(nvim_bufferline)
		end)
	    end,
	})
    end,
},
}
