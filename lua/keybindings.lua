require('plugins/whichKey')

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Ctrl-s to save
keymap('n', '<C-s>', ':w<CR>', opts)
keymap('i', '<C-s>', '<ESC>:w<CR>a', opts)

-- Ctrl-q to save and quit
keymap('n', '<C-q>', ':wq<CR>', opts)

-- Ctrl-hjkl to navigate windows
keymap('n', '<c-j>', '<c-w>j',opts)
keymap('n', '<c-h>', '<c-w>h',opts)
keymap('n', '<c-k>', '<c-w>k',opts)
keymap('n', '<c-l>', '<c-w>l',opts)

-- Alt-hjkl to resize windows
keymap('n', '<m-h>', ':vertical resize -2<CR>',opts)
keymap('n', '<m-j>', ':resize +2<CR>',opts)
keymap('n', '<m-k>', ':resize -2<CR>',opts)
keymap('n', '<m-l>', ':vertical resize +2<CR>',opts)

-- Change between buffers with TAB while on normal mode
keymap('n', '<TAB>', ':bnext<CR>', opts)
keymap('n', '<S-TAB>', ':bprevious<CR>', opts)

-- Toggle Nerd Tree
keymap('n', '<F2>', ':NERDTreeToggle<CR>',opts)
keymap('i', '<F2>', '<ESC>:NERDTreeToggle<CR>',opts)

