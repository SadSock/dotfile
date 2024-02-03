local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable release
	lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- set leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable command history list
vim.keymap.set('n', 'q:', '')
vim.keymap.set('n', 'q/', '')
vim.keymap.set('n', 'q?', '')

-- show line number
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.shiftwidth = 4

-- disable line wrap 
vim.wo.wrap = false
vim.wo.linebreak = true
vim.wo.list = false -- extra option I set in addition to the ones in your question

-- disable auto fold
vim.opt.foldlevelstart = 99 -- 0 to close all folds upon opening file
vim.opt.foldenable = true

--
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.incsearch = true
vim.opt.infercase = true

-- Please do NOT set `updatetime` to above 500, otherwise most plugins may not function correctly
-- vim.opt.updatetime = 200

require("lazy").setup({
    spec = {
	-- add LazyVim and import its plugins                                                                               
	-- { "LazyVim/LazyVim", import = "lazyvim.plugins" },                                                                  
	-- import any extras modules here                                                                                   
	-- { import = "lazyvim.plugins.extras.lang.typescript" },                                                           
	-- { import = "lazyvim.plugins.extras.lang.json" },                                                                 
	-- { import = "lazyvim.plugins.extras.ui.mini-animate" },                                                           
	-- import/override with your plugins                                                                                
	{ import = "plugins" },
    },
    defaults = {
	-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.              
	-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
	lazy = false,
	-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,                 
	-- have outdated releases, which may break your Neovim install.                                                     
	version = false, -- always use the latest git commit                                                                
	-- version = "*", -- try installing the latest stable version for plugins that support semver                       
    },
    install = {  missing = true,colorscheme = { "catppuccin" } },
    checker = { enabled = false }, -- automatically check for plugin updates                                              
    performance = {
	rtp = {
	    -- disable some rtp plugins                                                                                       
	    disabled_plugins = {
		"gzip",
		-- "matchit",                                                                                                   
		-- "matchparen",                                                                                                
		-- "netrwPlugin",                                                                                               
		"tarPlugin",
		"tohtml",
		"tutor",
		"zipPlugin",                                                                                                   P
	    },                                                                                                               S
	},
    },                                                                                                                   H
})


-- select theme
vim.cmd.colorscheme('catppuccin')

local wk = require("which-key")

wk.register({
  ["<leader>,"] = {
        "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>","Switch Buffer",
      },
  ["<leader>/"] = { "<cmd>Telescope live_grep_args<cr>", "Grep" },
  ["<leader>:"] = {"<cmd>Telescope command_history<cr>", "Command History" },
  ["<leader><space>"] = { "<cmd>Telescope find_files<cr>", "Find File" },
})

-- find
wk.register({
  ["<leader>"] = {
    f = {
--      name = "+file",
      b = {"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", "Buffers" },
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      g = {"<cmd>Telescope git_files<cr>",   "Find Files (git-files)" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      n = { "<cmd>enew<cr>", "New File" },
    },
  },
})


-- search
wk.register({
    ["<leader>s\""] = {"<cmd>Telescope registers<cr>", "Registers" },
})
wk.register({
    ["<leader>"] = {
	s = {
	    --name = "+search",
	    a={"<cmd>Telescope autocommands<cr>", "Auto Commands" },
	    b={"<cmd>Telescope current_buffer_fuzzy_find<cr>", "Buffer" },
	    c={"<cmd>Telescope command_history<cr>", "Command History" },
	    C={"<cmd>Telescope commands<cr>", "Commands" },
	    d={"<cmd>Telescope diagnostics bufnr=0<cr>", "Document diagnostics" },
	    D={"<cmd>Telescope diagnostics<cr>", "Workspace diagnostics" },
	    g={"<cmd>Telescope live_grep_args<cr>", "Grep" },
	    h={"<cmd>Telescope help_tags<cr>", "Help Pages" },
	    H={"<cmd>Telescope highlights<cr>", "Search Highlight Groups" },
	    k={"<cmd>Telescope keymaps<cr>", "Key Maps" },
	    M={"<cmd>Telescope man_pages<cr>", "Man Pages" },
	    m={"<cmd>Telescope marks<cr>", "Jump to Mark" },
	    o={"<cmd>Telescope vim_options<cr>", "Options" },
	    R={"<cmd>Telescope resume<cr>", "Resume" },
	    w={"<cmd>telescope grep_string<cr>", "Word" },
	    s={"<cmd>telescope lsp_document_symbols<cr>", "Goto Symbol" },
	    S={"<cmd>telescope lsp_dynamic_workspace_symbols", "Goto Symbol (Workspace)" },
	},
    },
})
