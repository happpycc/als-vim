local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("dashboard not found")
  return
end

local db = require('dashboard')
-- macos
-- db.preview_command = 'cat | lolcat -F 0.3'
-- linux
-- db.preview_command = 'ueberzug'
--
-- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
-- db.preview_file_height = 11
-- db.preview_file_width = 70
db.custom_center = {
    {icon = "  ",
    desc = "Projects                                ",
    action = "Telescope projects",
    shortcut = 'SPC f p'},
    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},
    {icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'},
  }
