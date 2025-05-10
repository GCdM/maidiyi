return {
  -- Colourschemes
  { 'folke/tokyonight.nvim' },
  { 'rebelot/kanagawa.nvim' },
  {
    'thesimonho/kanagawa-paper.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('kanagawa-paper-ink')
    end,
  },
  -- Useful for getting pretty icons, but requires a Nerd Font.
  { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },

  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
    -- TODO: Add telescope search
  },

  -- Show colour previews
  {
    'catgoose/nvim-colorizer.lua',
    event = 'BufReadPre',
    opts = {
      filetypes = { 'css', 'scss' },
      user_default_options = {
        names = false,
      },
    },
  },
}
