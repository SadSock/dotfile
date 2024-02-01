-- 代码补全


return {{
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
	'saadparwaiz1/cmp_luasnip',
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	'L3MON4D3/LuaSnip',
	"onsails/lspkind.nvim"
    },
    config = function()

	local cmp = require'cmp'
	local lspkind = require('lspkind')

	cmp.setup({
	    completion= {autocomplete = false},
	    snippet = {
		expand = function(args)
		    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		end,
	    },
	    window = {
		--completion = cmp.config.window.bordered(),
		--documentation = cmp.config.window.bordered(),
	    },
	    mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		['<Tab>'] = function(fallback)
		    if cmp.visible() then
			cmp.select_next_item()
		    else
			fallback()
		    end
		end
	    }),
	    sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
		{ name = 'buffer' },
		{ name = 'path' },
	    },
	    view = {
		entries = "custom" -- can be "custom", "wildmenu" or "native"
	    },
	    formatting = {
		format = lspkind.cmp_format(),
	    },
	})

	-- Set up lspconfig.
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
	require('lspconfig').clangd.setup {
	    capabilities = capabilities
	}
	require('lspconfig').lua_ls.setup {
	    capabilities = capabilities
	}

    end,
},
  }
