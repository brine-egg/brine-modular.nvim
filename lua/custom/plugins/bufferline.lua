return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        style_preset = require('bufferline').style_preset.minimal,
        truncate_names = false,
        max_name_length = 24,
        tab_size = 8,
      },
    }
  end,
}
