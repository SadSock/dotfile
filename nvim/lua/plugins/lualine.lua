return {
    {
	'nvim-lualine/lualine.nvim',
	dependencies = {
	    'nvim-tree/nvim-web-devicons',
	    "meuter/lualine-so-fancy.nvim",
	},
	lazy = true,
	event = "VimEnter",
	opts =  {
	    options =
		{
		    icons_enabled = true,
		    theme = 'auto',
		    globalstatus = true,
		    component_separators = { left = '', right = ''},
		    section_separators = { left = '', right = ''},
	    },
	    sections = {
		-- lualine_x = {"fileformat",
		--     {
		--     -- Lsp server name .
		--     function()
		-- 	local msg = 'Inactive'
		-- 	local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
		-- 	local clients = vim.lsp.get_active_clients()
		-- 	if next(clients) == nil then
		-- 	    return msg
		-- 	end
		-- 	for _, client in ipairs(clients) do
		-- 	    local filetypes = client.config.filetypes
		-- 	    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
		-- 		return "["..client.name.."]"
		-- 	    end
		-- 	end
		-- 	return msg
		--     end,
		--     -- icon = ' ',
		--     -- color = { fg = '#ffffff', gui = 'bold' },
		-- }, 
		-- "fancy_lsp_servers",
		-- {"fancy_filetype", ts_icon = ""},}
		-- "filetype"},
		lualine_a = {
		    { "fancy_mode", width = 3 }
		},
		lualine_b = {
		    { "fancy_branch" },
		    { "fancy_diff" },
		},
		lualine_c = {
		    { "fancy_cwd", substitute_home = true }
		},

		lualine_x = {
		    { "fancy_macro" },
		    { "fancy_diagnostics" },
	--	    { "fancy_searchcount" },
		    { "fancy_location" },
		},
		lualine_y = {
		    { "fancy_filetype", ts_icon = "" }
		},
		lualine_z = {
		    { "fancy_lsp_servers" }
		}
	    }
	}
    }
}
