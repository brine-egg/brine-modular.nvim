return {
  { -- Install lualine.nvim for better statusline customisation
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '／', right = '＼' },
        section_separators = { left = '', right = '' },
      },
    },
  },
}
