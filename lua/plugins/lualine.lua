local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("lualine not found")
  return
end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}
lualine.setup({
  options = { theme = 'tokyonight' },
})
