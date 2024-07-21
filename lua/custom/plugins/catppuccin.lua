-- Use Catppuccin as editor theme

return {

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'auto',
        background = {
          light = 'latte',
          dark = 'mocha',
        },
        default_integrations = true,
      }
      require('catppuccin').load()
    end,
  },
}
