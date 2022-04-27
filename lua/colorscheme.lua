-- base
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- no mode in status line
vim.o.showmode = false

local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " IS NOT INSTALLED")
  return
end
