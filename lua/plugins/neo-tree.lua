return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree position=right',
  keys = {
    { '\\', '<cmd>Neotree reveal position=right<cr>', desc = 'NeoTree', silent = true },
    { '|', '<cmd>Neotree close<cr>' },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_current',
      window = {
        mappings = { ['\\'] = 'close_window' },
        width = 100,
      },
      filtered_items = {
        visible = true,
        never_show = { '.git' },
      },
    },
    default_component_configs = {
      type = { enabled = false },
    },
  },
}
