local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)
keymap("n", "<leader>o", ":only<CR>", opts)

-- Save && Quit
keymap("n", ",q", ":q<CR>", opts)
keymap("n", ",w", ":w<CR>", opts)
keymap("n", ",r", ":luafile %<CR>", opts)

-- Faster move
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)

-- Resize with arrows
keymap("n", "<Up>", ":resize -2<CR>", opts)
keymap("n", "<Down>", ":resize +2<CR>", opts)
keymap("n", "<Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<Right>", ":vertical resize -2<CR>", opts)

-- Manage buffer
keymap("n", "<A-l>", ":bn<CR>", opts)
keymap("n", "<A-h>", ":bp<CR>", opts)


-- Visual
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Faster move
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)
keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)

-- nvim-tree
local status_ok, _ = pcall(require, "nvim-tree")
if status_ok then
  keymap("n", ",t", ":NvimTreeToggle<CR>", opts)
  keymap("n", "<C-x>", ":NvimTreeClose<CR>:bd<CR>", opts)
end

-- symbols-outline
status_ok, _ = pcall(require, "symbols-outline")
if status_ok then
  keymap("n", ",s", ":SymbolsOutline<CR>", opts)
end

-- lspconfig
status_ok, _ = pcall(require, "lspconfig")
if status_ok then
  vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
end
