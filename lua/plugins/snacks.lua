return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    -- animate = { enabled = true },
    bufdelete = { enabled = true },
    git = { enabled = true },
    indent = {
      enabled = true,
      indent = { only_scope = true, only_current = true },
    },
    input = { enabled = true },
    notifier = { enabled = true },
    notify = { enabled = true },
    scope = { enabled = true },
    toggle = { enabled = true },
    utils = { enabled = true },
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    -- input = { enabled = true },
    -- picker = { enabled = true },
    -- quickfile = { enabled = true },
    -- scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
  keys = {
    {
      '<leader>gB',
      function()
        Snacks.git.blame_line()
      end,
      desc = '[G]it [*B*]lame line (detailed)',
      mode = { 'n', 'v' },
    },
    {
      '<leader>bs',
      function()
        Snacks.scratch()
      end,
      desc = '[B]uffer [S]cratch',
    },
    {
      '<leader>nh',
      function()
        Snacks.notifier.show_history()
      end,
      desc = '[N]otification [H]istory',
    },
    {
      '<leader>bd',
      function()
        Snacks.bufdelete()
      end,
      desc = '[B]uffer [D]elete',
    },
    {
      '<leader>bo',
      function()
        Snacks.bufdelete.other()
      end,
      desc = '[B]uffer delete [O]thers',
    },
    {
      '<leader>bD',
      function()
        Snacks.bufdelete.all()
        vim.cmd('Neotree reveal position=current')
      end,
      desc = '[B]uffer delete [A]ll',
    },
    {
      '<leader>cR',
      function()
        Snacks.rename.rename_file()
      end,
      desc = '[C]ode [*R*]ename File',
    },
    {
      '<leader>gf',
      function()
        Snacks.lazygit.log_file()
      end,
      desc = 'Lazy[G]it current [F]ile history',
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazy[G]it',
    },
    {
      '<leader>gl',
      function()
        Snacks.lazygit.log()
      end,
      desc = 'Lazy[G]it [L]og',
    },
    -- {
    --   '<leader>un',
    --   function()
    --     Snacks.notifier.hide()
    --   end,
    --   desc = 'Dismiss All Notifications',
    -- },
  },
  init = function()
    vim.api.nvim_create_autocmd('User', {
      pattern = 'VeryLazy',
      callback = function()
        -- -- Setup some globals for debugging (lazy-loaded)
        -- _G.dd = function(...)
        --   Snacks.debug.inspect(...)
        -- end
        -- _G.bt = function()
        --   Snacks.debug.backtrace()
        -- end
        -- vim.print = _G.dd -- Override print to use snacks for `:=` command

        -- Create some toggle mappings
        Snacks.toggle.option('spell', { name = '[U]I [S]pell check' }):map('<leader>us')
        Snacks.toggle.option('wrap', { name = '[U]I [W]rap' }):map('<leader>uw')
        Snacks.toggle.option('relativenumber', { name = '[U]I relative [*L*]ine numbers' }):map('<leader>uL')
        Snacks.toggle.diagnostics():map('<leader>ud')
        Snacks.toggle.line_number():map('<leader>ul')
        -- Snacks.toggle.option('conceallevel', { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map('<leader>uc')
        -- Snacks.toggle.treesitter():map('<leader>uT')
        Snacks.toggle.option('background', { off = 'light', on = 'dark', name = '[U]I [B]ackground' }):map('<leader>ub')
        Snacks.toggle.inlay_hints():map('<leader>uh')
        Snacks.toggle.indent():map('<leader>ug')
        Snacks.toggle.dim():map('<leader>uD')
      end,
    })
  end,
}
