return {
  {
    "folke/which-key.nvim",
      lazy = true,
      event = "VeryLazy",
      dependencies = {

	'echasnovski/mini.icons',
      },
      config = require("configs.which-key"),
  },
}
