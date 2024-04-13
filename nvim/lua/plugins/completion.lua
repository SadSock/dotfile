-- 代码补全


M = {
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = "InsertEnter",
    config = require("configs.cmp"),
    dependencies = {
	{
	    "L3MON4D3/LuaSnip",
	    --dependencies = { "rafamadriz/friendly-snippets" },
	    config = require("configs.luasnip"),
	},
	{ "lukas-reineke/cmp-under-comparator" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },
	{"onsails/lspkind.nvim"},
	--	{ "andersevenrud/cmp-tmux" },
	{ "hrsh7th/cmp-path" },
	--	{ "f3fora/cmp-spell" },
	{ "hrsh7th/cmp-buffer" },
--	{ "kdheepak/cmp-latex-symbols" },
--	{ "ray-x/cmp-treesitter", commit = "c8e3a74" },
	-- { "tzachar/cmp-tabnine", build = "./install.sh", config = require("completion.tabnine") },
	-- {
	-- 	"jcdickinson/codeium.nvim",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"MunifTanjim/nui.nvim",
	-- 	},
	-- 	config = require("completion.codeium"),
	-- },
    },
}


return{
   -- M
}


