-----------------------------------------------------------
-- UI relatred third party keymaps
-----------------------------------------------------------

local map = require('core/keymaps').map

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>') -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>') -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>') -- search file
