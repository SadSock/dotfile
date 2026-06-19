return function()
  require("grug-far").setup({
    windowCreationCommand = "vsplit",
    normalModeSearch = true,
    engine = "ripgrep",
    enabledEngines = { "ripgrep" },
    engines = {
      ripgrep = {
        path = "rg",
      },
    },
  })
end
