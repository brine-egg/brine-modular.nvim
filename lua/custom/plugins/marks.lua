return {
  {
    'chentoast/marks.nvim',
    config = function()
      require('marks').setup {
        default_mappings = true,
      }
    end,
  },
}
