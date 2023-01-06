-- Show line number
vim.opt.number = true

-- Show relative number
-- vim.opt.relativenumber = true

-- Highlight cursor line
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- two Space == one Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- >> << Move length
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- Space replace tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- Align new line with current line
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- When the file is modified by an external program, it is automatically loaded
vim.o.autoread = true
vim.bo.autoread = true

-- Mouse support
vim.o.mouse = "a"
