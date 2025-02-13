return {
  'nvim-pack/nvim-spectre',
  opts = {},
  keys = {
    {
      '<leader>ss',
      '<cmd>lua require("spectre").open_file_search()<cr>',
      desc = '[S]earch current file w/ [S]pectre',
      mode = { 'n', 'v' },
    },
    {
      '<leader>sS',
      '<cmd>lua require("spectre").toggle()<cr>',
      desc = '[S]earch all files w/ [*S*]pectre',
      mode = { 'n', 'v' },
    },
    {
      '<leader>sw',
      '<cmd>lua require("spectre").open_visual({ select_word = true })<cr>',
      desc = '[S]earch [W]ord w/ Spectre',
      mode = { 'n' },
    },
    {
      '<leader>sw',
      '<esc><cmd>lua require("spectre").open_visual()<cr>',
      desc = '[S]earch [W]ord w/ Spectre',
      mode = { 'v' },
    },
  },
}
