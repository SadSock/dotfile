return {
    {
	"tomasky/bookmarks.nvim",
	event = "VeryLazy",
	config = function()
	    require("bookmarks").setup({
		save_file = vim.fn.expand("$HOME/.local/share/bookmarks"), -- bookmarks save file path
		keywords = {
		    ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
		    ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
		    ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
		    ["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
		},
		on_attach = function(bufnr)
		    local bm = require("bookmarks")
		    --vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
		    local map = vim.keymap.set
		    map("n", "mm", bm.bookmark_toggle,{buffer = bufnr ,desc = "toggle bookmark"}) -- add or remove bookmark at current line
		    map("n", "mi", bm.bookmark_ann, {buffer = bufnr, desc = "edit annotation"}) -- add or edit mark annotation at current line
		    map("n", "mc", bm.bookmark_clean,{buffer = bufnr, desc = "clean local marks"}) -- clean all marks in local buffer
		    map("n", "mn", bm.bookmark_next, {buffer = bufnr, desc = "next local mark"}) -- jump to next mark in local buffer
		    map("n", "mp", bm.bookmark_prev, {buffer = bufnr, desc = "previous local mark"}) -- jump to previous mark in local buffer
		    map("n", "ml", bm.bookmark_list, {buffer = bufnr, desc = "marks list"}) -- show marked file list in quickfix window
		end,
	    })
	end,
    },
}
