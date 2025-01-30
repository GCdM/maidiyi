return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']g', function()
          if vim.wo.diff then
            vim.cmd.normal({ ']g', bang = true })
          else
            gitsigns.nav_hunk('next')
          end
        end, { desc = 'Jump to next [G]it change' })

        map('n', '[g', function()
          if vim.wo.diff then
            vim.cmd.normal({ '[g', bang = true })
          else
            gitsigns.nav_hunk('prev')
          end
        end, { desc = 'Jump to previous [G]it change' })

        -- [H]unk actions
        -- visual mode
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, { desc = 'git [H]unk [S]tage' })
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, { desc = 'git [H]unk [R]eset' })
        -- normal mode
        map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'git [H]unk [S]tage hunk' })
        map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'git [H]unk [R]eset hunk' })
        map('n', '<leader>hu', gitsigns.undo_stage_hunk, { desc = 'git [U]ndo stage hunk' })
        map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'git [H]unk [P]review ' })

        -- [G]it actions
        map('n', '<leader>gS', gitsigns.stage_buffer, { desc = '[G]it [*S*]tage buffer' })
        map('n', '<leader>gR', gitsigns.reset_buffer, { desc = '[G]it [*R*]eset buffer' })
        map('n', '<leader>gb', gitsigns.blame_line, { desc = '[G]it [B]lame line' })
        map('n', '<leader>gd', gitsigns.diffthis, { desc = '[G]it [D]iff against index' })
        map('n', '<leader>gb', gitsigns.toggle_current_line_blame, { desc = 'toggle [G]it show [B]lame line' })
        map('n', '<leader>gD', gitsigns.toggle_deleted, { desc = 'toggle [G]it show [*D*]eleted' })
        -- map('n', '<leader>hD', function()
        --   gitsigns.diffthis('@')
        -- end, { desc = 'git [*D*]iff against last commit' })
      end,
    },
  },
}
