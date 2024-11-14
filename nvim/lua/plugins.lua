local status, packer = pcall(require, 'packer')


if (not status) then
  print("Packer is not Installed!")
end


vim.cmd [[packadd packer.nvim]]


packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    "catppuccin/nvim",
    as = "catppuccin"
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'gen740/SmoothCursor.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'

  -- cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'

  -- Snippet
  use 'L3MON4D3/LuaSnip'

  -- TreeSitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- mason
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- AutoTags 
  use 'windwp/nvim-autopairs'

  -- Nvim Tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons' -- optional, for file icons

  -- BufferLine
  use {
    'akinsho/bufferline.nvim',
    after = 'catppuccin',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {
        highlights = require("catppuccin.groups.integrations.bufferline").get()
      }
    end
  }

  -- AnyLine ( cursor animation )
  use {
    'huy-hng/anyline.nvim',
    requires = 'nvim-treesitter/nvim-treesitter',
  }
end)
