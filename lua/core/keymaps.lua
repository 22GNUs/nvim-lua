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

return {
  -- export map function so it can be used in other files
  map = map
}
