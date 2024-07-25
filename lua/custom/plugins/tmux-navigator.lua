return {
  'connordeckers/tmux-navigator.nvim',
  config = function()
    require('tmux-navigator').setup { enable = true }
  end,
}
