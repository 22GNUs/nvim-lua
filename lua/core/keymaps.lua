-----------------------------------------------------------
-- Customize the keybindings here.
-----------------------------------------------------------
-- A map function to easily map keys
-- @param mode The mode to map the key to
-- @param lhs The key to map
-- @param rhs The command to execute
-- @param opts Optional options
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------
-- Change leader to a comma
vim.g.mapleader = ','

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

map('n', '>', 'gt')
map('n', '<', 'gT')

-- Clear search highlighting with double Esc
map('n', '<Esc><Esc>', ':nohl<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

return {
  -- export map function so it can be used in other files
  map = map
}
