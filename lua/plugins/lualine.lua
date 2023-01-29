local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("lualine not found")
  return
end

lualine.setup({
  options = { theme = 'moonfly' },
})
