return {

    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    build = function()
	if #vim.api.nvim_list_uis() ~= 0 then
	    vim.api.nvim_command([[TSUpdate]])
	end
    end,
    event = "BufReadPre",
    config = require("configs.treesitter"),
    dependencies = {
	{ "andymass/vim-matchup" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
    },
}
