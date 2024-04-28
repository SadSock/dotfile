return function()

  vim.api.nvim_set_option_value("foldmethod", "expr", {})
  vim.api.nvim_set_option_value("foldexpr", "nvim_treesitter#foldexpr()", {})
  -- vim.g.matchup_matchparen_offscreen = { method = "popup", fullwidth = 1, highlight = "Normal", syntax_hl = 1 }
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "gitcommit",
      "diff",
      "rst",
      "llvm",
      "tablegen",
      "bash",
      "c",
      "cpp",
      "json",
      --	    "latex",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      "python",
      "rust",
      "typescript",
      "vimdoc",
      "yaml",
    },
    highlight = {
      enable = true,
      disable = function(ft, bufnr)
	if vim.tbl_contains({ "vim" }, ft) then
	  return true
	end

	local ok, is_large_file = pcall(vim.api.nvim_buf_get_var, bufnr, "bigfile_disable_treesitter")
	return ok and is_large_file
      end,
      additional_vim_regex_highlighting = false,
    },
    textobjects = {
      select = {
	enable = true,
	keymaps = {
	  ["af"] = "@function.outer",
	  ["if"] = "@function.inner",
	  ["ac"] = "@class.outer",
	  ["ic"] = "@class.inner",
	  --  ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
	},
      },
      move = {
	enable = true,
	set_jumps = true, -- whether to set jumps in the jumplist
	goto_next_start = {
	  ["]["] = "@function.outer",
	  ["]m"] = "@class.outer",
	},
	goto_next_end = {
	  ["]]"] = "@function.outer",
	  ["]M"] = "@class.outer",
	},
	goto_previous_start = {
	  ["[["] = "@function.outer",
	  ["[m"] = "@class.outer",
	},
	goto_previous_end = {
	  ["[]"] = "@function.outer",
	  ["[M"] = "@class.outer",
	},
      },
    },
    indent = { enable = true },
    matchup = {
      enable = true,
      disable_virtual_text = {"c", "cpp", "python"},
    },
  })
  require("nvim-treesitter.install").prefer_git = true
  local parsers = require("nvim-treesitter.parsers").get_parser_configs()
  for _, p in pairs(parsers) do
    p.install_info.url = p.install_info.url:gsub("https://github.com/", "git@github.com:")
  end
end
