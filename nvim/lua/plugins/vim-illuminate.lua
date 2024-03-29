return {
    {
        "RRethy/vim-illuminate",
        event = { "BufReadPost", "BufNewFile", "BufWritePre" },
        opts = {
            delay = 200,
            large_file_cutoff = 2000,
            large_file_overrides = {
        	providers = { "lsp" },
            },
        },
        config = function(_, opts)
            require("illuminate").configure(opts)
            --local function map(key, dir, buffer)
            --    vim.keymap.set("n", key, function()
            --        require("illuminate")["goto_" .. dir .. "_reference"](false)
            --        end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
            --end

            --map("]]", "next")
            --map("[[", "prev")

            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]
            --vim.api.nvim_create_autocmd("FileType", {
            --    callback = function()
            --        local buffer = vim.api.nvim_get_current_buf()
            --        map("]]", "next", buffer)
            --        map("[[", "prev", buffer)
            --    end,
            --})
            -- highlight style
            vim.api.nvim_create_augroup("vim_illuminate_augroup", { clear = true })
            vim.api.nvim_create_autocmd({ "UIEnter", "BufReadPre", "BufNewFile" }, {
        	group = "vim_illuminate_augroup",
        	callback = function()
        	    vim.cmd([[hi IlluminatedWordText  guifg=none guibg=none ctermfg=none ctermbg=none cterm=underline gui=underline]])
        	    vim.cmd([[hi IlluminatedWordRead  guifg=none guibg=none ctermfg=none ctermbg=none cterm=underline gui=underline]])
        	    vim.cmd([[hi IlluminatedWordWrite guifg=none guibg=none ctermfg=none ctermbg=none cterm=underline gui=underline]])
        	end,

            })
        end,
        keys = {
            --    { "]]", desc = "Next Reference" },
            --    { "[[", desc = "Prev Reference" },
        },
    },
}
