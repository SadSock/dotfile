return {
  {
    'kevinhwang91/nvim-fundo',
   -- optional, but required for fuzzy finder support
    event = { 'BufWritePre' },
    dependencies = { 'kevinhwang91/promise-async' },
    config = function()
      require('fundo').setup()
    end,
  },
}
