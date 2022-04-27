-- base
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- no mode in status line
vim.o.showmode = false

-- get macOS Darkmode status and choose background mode
local auto_status_file = io.popen("defaults read -g AppleInterfaceStyleSwitchesAutomatically")
local dark_status_file = io.popen("defaults read -g AppleInterfaceStyle")
local auto_status = auto_status_file:read("*all")
local dark_status = dark_status_file:read("*all")

if auto_status == "1\n" then
  if dark_status == "Dark\n" then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end
else
  if dark_status == "Dark\n" then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end
end

local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " IS NOT INSTALLED")
  return
end
