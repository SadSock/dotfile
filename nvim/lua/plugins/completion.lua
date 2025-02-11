-- 代码补全

return{{
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = "InsertEnter",
    config = require("configs.cmp"),
    dependencies = {
	{
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },
	{"onsails/lspkind.nvim"},
	{ "hrsh7th/cmp-path" },
	-- { "hrsh7th/cmp-buffer" },
    },
}
}
