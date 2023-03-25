local status, im_select = pcall(require, 'im_select')
if not status then
  vim.notify("im_select not found")
  return
end

im_select.setup()
