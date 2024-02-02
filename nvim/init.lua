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

