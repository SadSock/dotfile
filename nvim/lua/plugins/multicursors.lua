M ={
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'nvimtools/hydra.nvim',
    },
    opts = {

      hint_config = {
	float_opts = {
	  border = 'rounded',
	},
	position = 'bottom-right',
      },
      generate_hints = {
	normal = true,
	insert = true,
	extend = true,
	config = {
	  column_count = 1,
	},
      },


    },
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
	mode = { 'v', 'n' },
	'<Leader>m',
	'<cmd>MCstart<cr>',
	desc = 'Multicursors',
      },
    },
  },
}

return M
