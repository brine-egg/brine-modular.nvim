return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - <C-s>aiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - <C-s>d'   - [S]urround [D]elete [']quotes
      -- - <C-s>r)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup {
        mappings = {
          add = '<C-s>a', -- Add surrounding in Normal and Visual modes
          delete = '<C-s>d', -- Delete surrounding
          find = '<C-s>f', -- Find surrounding (to the right)
          find_left = '<C-s>F', -- Find surrounding (to the left)
          highlight = '<C-s>h', -- Highlight surrounding
          replace = '<C-s>r', -- Replace surrounding
          update_n_lines = '<C-s>n', -- Update `n_lines`
        },
      }

      -- Pop-up file manager
      require('mini.files').setup {
        windows = {
          max_number = 5,
          preview = true,
          width_nofocus = 15,
          width_focus = 30,
          width_preview = 30,
        },
        -- Keybind to quickly open the file manager window
        vim.keymap.set('n', '<leader>m', '<cmd>lua MiniFiles.open()<cr>', { desc = 'Open file [M]anager' }),
      }

      -- Startup screen
      require('mini.starter').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
