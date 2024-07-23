return {
  { -- Install scope.nvim to separate buffers by tabs
    'tiagovla/scope.nvim',
    config = function()
      require('scope').setup {}
    end,
  },
}
