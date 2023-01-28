local colorscheme = "palenightfall"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.cmd "colorscheme elflord"
  return
end
