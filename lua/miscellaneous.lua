------------------------------------------------- FILE
-- Auto read: If file has been changed, reload it.
vim.o.autoread = true
vim.bo.autoread = true

-- forbid vim creating swapfile
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- utf-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- 4 Space equal to 1 Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

-- >> << shiftwidth
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- use Space to replace Tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- autoindent
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

------------------------------------------------- DISPLAY
-- forbid line wrap
vim.wo.wrap = false

-- show hidden chars
vim.o.list = true
vim.o.listchars = "space:·,tab:>-"

-- change ~ signs to ➥
vim.o.fillchars = "eob:➥"

-- using relative number
vim.wo.number = true
vim.wo.relativenumber = true

-- highlight current line
vim.wo.cursorline = true

-- display sign column
vim.wo.signcolumn = "no"

-- always shows tabline
vim.o.showtabline = 2

-- raise up cmdline for 1 line
vim.o.cmdheight = 2

-- display linelen reference bar
vim.wo.colorcolumn = "80"

-- split window show from bottom and right
vim.o.splitbelow = true
vim.o.splitright = true

------------------------------------------------- TRAVELING
-- preserve 8 lines when travel using jkhl
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- able to go to next/prev line using [LEFT] [RIGHT]
vim.o.whichwrap = '<,>,[,]'

-- let vim save some of the buffer for you(in swap dir)
vim.o.hidden = true

-- mouse support
vim.o.mouse = "a"

-- faster cursor
vim.o.updatetime = 300

-- smaller shortcut trigger timeout
vim.o.timeoutlen = 500

------------------------------------------------- SEARCHING
-- do not hightlight all the search result
vim.o.hlsearch = false

-- search while input
vim.o.incsearch = true

-- ignore Uppercase unless determined one
vim.o.ignorecase = true
vim.o.smartcase = true
