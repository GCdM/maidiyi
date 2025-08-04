return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    lazy = false,
    opts = {
      open_mapping = '<C-/>',
      direction = 'vertical',
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
    },
    keys = {
      { '<C-S-/>', '<cmd>ToggleTerm<cr>', desc = 'Open terminal', mode = { 'n', 'i', 'v', 't' } },
    },
  },
}
