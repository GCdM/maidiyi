return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      show_buffer_close_icons = false,
      offsets = {
        {
          filetype = 'neo-tree',
          separator = true,
        },
      },
    },
  },
}
