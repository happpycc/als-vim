local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print "packer not found"
  return
end

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  -- use 'navarasu/onedark.nvim'
  use 'JoosepAlviste/palenightfall.nvim'
  use "bluz71/vim-moonfly-colors"

  -- files explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Auto pairs
  use "windwp/nvim-autopairs"

  -- Bottom status line style
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }

  }
  -- Top buffer line style
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Startup window
  -- use "glepnir/dashboard-nvim"

  -- Fuzzy serach
  -- use {
  --   'nvim-telescope/telescope.nvim', tag = '0.1.0',
  --   requires = { {'nvim-lua/plenary.nvim'} }
  -- }

  -- Projects
  -- use "ahmedkhalf/project.nvim"

  -- lsp
  use {
    "williamboman/mason.nvim", -- Install language server automatically
    "williamboman/mason-lspconfig.nvim", -- The bridge between mason and lspconfig
    "neovim/nvim-lspconfig", -- Configurations for Nvim LSP

    -- rust
    'kdarkhan/rust-tools.nvim',
  }

  -- cmp
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    -- Snippets
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',

    -- ui
    'onsails/lspkind.nvim'
  }

  -- Highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }

  -- Indent Blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- Auto save
  use "Pocco81/AutoSave.nvim"

  -- Document outline
  use 'simrat39/symbols-outline.nvim'

  -- im-select
  use 'keaising/im-select.nvim'

  -- terminal
  use { "akinsho/toggleterm.nvim", tag = '*' }
end)
