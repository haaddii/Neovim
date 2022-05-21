vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- WINDOW MANAGEMENT
-- remap the default s function YOU CAN UNCOMMENT IT IF YOU NEED
-- map("n", "s", "", opt)

-- window splitting
map("n", "wv", ":vsp<CR>", opt)
map("n", "wh", ":sp<CR>", opt)
-- close pannel
map("n", "wc", "<C-w>c", opt)
map("n", "wo", "<C-w>o", opt)

-- focus
map("n", "<M-j>", "<C-w>h", opt)
map("n", "<M-k>", "<C-w>j", opt)
map("n", "<M-i>", "<C-w>k", opt)
map("n", "<M-l>", "<C-w>l", opt)

-- Ratio
-- HORIZONAL
map("n", "<M-Left>", ":vertical resize -2<CR>", opt)
map("n", "<M-Right>", ":vertical resize +2<CR>", opt)
map("n", "wj", ":vertical resize -20<CR>", opt)
map("n", "wl", ":vertical resize +20<CR>", opt)
-- VERTICAL
map("n", "<M-Up>", ":resize +2<CR>", opt)
map("n", "<M-Down>", ":resize -2<CR>", opt)
map("n", "wk", ":resize -10<CR>", opt)
map("n", "wi", ":resize +10<CR>", opt)
-- EQ
map("n", "w=", "<C-w>=", opt)

-- Terminal
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<M-j>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<M-k>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<M-i>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<M-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- EDITOR BEHAVIORS
-- ident code with <> in visual mode
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- chose more code using i and k
map("v", "K", ":move '>+1<CR>gv-gv", opt)
map("v", "I", ":move '<-2<CR>gv-gv", opt)
