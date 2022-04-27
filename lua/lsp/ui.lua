-- use more powerful menu
vim.o.wildmenu = true

-- maximun menu height
vim.o.pumheight = 10

-- no autoselect while autocomplete
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- Don not pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'

