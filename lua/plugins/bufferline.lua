local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("bufferline not found")
  return
end

bufferline.setup()
