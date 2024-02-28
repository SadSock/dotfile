return {
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
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
		lualine_x = {
		    {
		    -- Lsp server name .
		    function()
			local msg = 'Inactive'
			local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
			local clients = vim.lsp.get_active_clients()
			if next(clients) == nil then
			    return msg
			end
			for _, client in ipairs(clients) do
			    local filetypes = client.config.filetypes
			    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return "["..client.name.."]"
			    end
			end
			return msg
		    end,
		    -- icon = ' ',
		    -- color = { fg = '#ffffff', gui = 'bold' },
		},"fileformat", "filetype"},
	    }
	}
    }
}
