-- [[ Setting options ]]
-- NOTE: See `:help vim.opt`
-- For more options, you can see `:help option-list`

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.scrolloff = 8
vim.opt.showmode = false
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
-- vim.opt.updatetime = 250
vim.opt.undofile = true
vim.opt.undodir = os.getenv('HOME') .. '/.vim/backup'
vim.opt.backupdir = os.getenv('HOME') .. '/.vim/undo'

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' }

-- TODO: Set up partial integration with OS clipboard
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
--   vim.opt.clipboard = 'unnamedplus'
-- end)

--[[ 
    **Unknown settings**

    Not sure what these do, but keeping them for now from `kickstarter.nvim`
--]]

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
