-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/chentoast/marks.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "chentoast/marks.nvim",
  event = "VeryLazy",
  opts = {

    builtin_marks = { ".", "<", ">", "^", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"},

  },
}
