-- base
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- no mode in status line
vim.o.showmode = false

local sysname_file = io.popen("uname")
local sysname = sysname_file:read("*all")
--get systembackground status
if sysname ~= "Linux\n" then
  -- [if on macos]get macOS Darkmode status and choose background mode
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
else
  --[if on Linux] get system theme status
  local gnome_dark_status_file = io.popen("dconf read /org/gnome/desktop/interface/color-scheme")
  local gnome_dark_status = gnome_dark_status_file:read("*all")
  if gnome_dark_status == "'default'\n" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end

local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " IS NOT INSTALLED")
  return
end
