return {
  { -- Install marks.nvim for easier usage of Vim marks
    'chentoast/marks.nvim',
    config = function()
      require('marks').setup {
        default_mappings = true,
      }
    end,
  },
}
