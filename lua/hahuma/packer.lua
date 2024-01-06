-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Adding Tokyo colorscheme
  use "folke/tokyonight.nvim"

  use {
     'nvim-treesitter/nvim-treesitter',
     run = function()
         local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
         ts_update()
     end,
  }

  use 'nvim-treesitter/playground'

  use 'theprimeagen/harpoon'
end)
