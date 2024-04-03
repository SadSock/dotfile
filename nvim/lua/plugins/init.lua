return {

  -- I have a separate config.mappings file where I require which-key.
  -- With lazy the plugin will be automatically loaded when it is required somewhere


  {
    "cappyzawa/trim.nvim",
    config = function()
      require("trim").setup(
	{
	  ft_blocklist = {},
	  patterns = {},
	  trim_on_write = true,
	  trim_trailing = true,
	  trim_last_line = true,
	  trim_first_line = true,
	  highlight = false,
	  highlight_bg = '#ff0000', -- or 'red'
	  highlight_ctermbg = 'red',
	})
    end
  }

}
