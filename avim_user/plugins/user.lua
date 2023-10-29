return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
        require("monokai-pro").setup {
        filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
    }
    end
},
}
