return {
	{
		-- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
		config = function()
			require('nvim-treesitter.configs').setup ({
				ensure_installed = {"rust", "gitcommit", "diff","rst","yaml","tablegen","markdown_inline" ,"markdown","llvm","cpp", "c", "lua",},
				sync_install = false,
				auto_install = true,
				ignore_install = { "javascript" },
				highlight = {
					enable = true,
					disable = {},
					additional_vim_regex_highlighting = true,
				}})
			end,
		}
	}
