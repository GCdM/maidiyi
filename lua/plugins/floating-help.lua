return {
  'Tyler-Barham/floating-help.nvim',
  lazy = false,
  opts = {},
  keys = {
    {
      '<leader>H',
      function()
        require('floating-help').toggle()
      end,
      desc = 'Toggle Floating[*H*]elp window',
    },
  },
  config = function()
    -- Only replace cmds, not search; only replace the first instance
    local function cmd_abbrev(abbrev, expansion)
      local cmd = 'cabbr ' .. abbrev .. ' <c-r>=(getcmdpos() == 1 && getcmdtype() == ":" ? "' .. expansion .. '" : "' .. abbrev .. '")<CR>'
      vim.cmd(cmd)
    end

    -- Redirect `:h` to `:FloatingHelp`
    cmd_abbrev('h', 'FloatingHelp')
    cmd_abbrev('help', 'FloatingHelp')
    cmd_abbrev('helpc', 'FloatingHelpClose')
    cmd_abbrev('helpclose', 'FloatingHelpClose')
  end,
}
