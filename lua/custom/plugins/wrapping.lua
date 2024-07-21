return {
  { -- Install wrapping.nvim for more intuitive line wrapping
    'andrewferrier/wrapping.nvim',
    config = function()
      require('wrapping').setup()
    end,
  },
}
