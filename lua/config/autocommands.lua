-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Enable line wrap for text files,
-- w/o inserting EOL characters.
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'text',
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    -- vim.opt_local.list = false
    vim.opt_local.textwidth = 0
    vim.opt_local.wrapmargin = 0
    vim.opt_local.formatoptions:remove('t')
    -- vim.opt_local.columns = 80
  end,
})
-- TODO: Remove duplication by using regex pattern correctly
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'txt',
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    -- vim.opt_local.list = false
    vim.opt_local.textwidth = 0
    vim.opt_local.wrapmargin = 0
    vim.opt_local.formatoptions:remove('t')
    -- vim.opt_local.columns = 80
  end,
})
