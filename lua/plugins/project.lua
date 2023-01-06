local status, project = pcall(require, "nvim-autopairs")
if not status then
    vim.notify("project not found")
  return
end

project.setup()
require('telescope').load_extension('projects')
