return function()
  local icons = {
    kind = require("utils.icons").get("kind"),
    type = require("utils.icons").get("type"),
    cmp = require("utils.icons").get("cmp"),
  }
  local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end

  local border = function(hl)
    return {
      { "┌", hl },
      { "─", hl },
      { "┐", hl },
      { "│", hl },
      { "┘", hl },
      { "─", hl },
      { "└", hl },
      { "│", hl },
    }
  end

  local cmp = require("cmp")
  require("utils").load_plugin("cmp", {
    --completion= {autocomplete = false},
    preselect = cmp.PreselectMode.Item,
    window = {
      completion = {
	border = border("PmenuBorder"),
	winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:PmenuSel",
	scrollbar = true,
      },
      documentation = {
	border = border("CmpDocBorder"),
	winhighlight = "Normal:CmpDoc",
      },
    },
    sorting = {
      priority_weight = 2,
      comparators = comparators,
    },
    formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
	local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
	local strings = vim.split(kind.kind, "%s", { trimempty = true })
	kind.kind = " " .. (strings[1] or "") .. " "
	kind.menu = "    (" .. (strings[2] or "") .. ")"

	return kind
      end,
    },
    matching = {
      disallow_partial_fuzzy_matching = false,
    },
    performance = {
      async_budget = 1,
      max_view_entries = 120,
    },
    mapping = {
      ['<Up>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
      ['<Down>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm {
	behavior = cmp.ConfirmBehavior.Replace,
	select = true,
      },
      ['<Tab>'] = function(fallback)
	if cmp.visible() then
	  cmp.select_next_item()
	else
	  fallback()
	end
      end,
      ['<S-Tab>'] = function(fallback)
	if cmp.visible() then
	  cmp.select_prev_item()
	else
	  fallback()
	end
      end,
    },


    snippet = {
      --    expand = function(args)
	-- require("luasnip").lsp_expand(args.body)
	--    end,
      },
      -- You should specify your *installed* sources.
      sources = {
	{ name = "nvim_lsp", max_item_count = 350 },
	{ name = "nvim_lua" },
	{ name = "path" },
	{ name = "buffer" },
      },
      experimental = {
	ghost_text = {
	  hl_group = "Whitespace",
	},
      },
    })
  end
