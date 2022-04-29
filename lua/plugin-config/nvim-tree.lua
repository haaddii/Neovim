local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("NO SUCH PLUGIN CALLED nvim-tree")
  return
end
