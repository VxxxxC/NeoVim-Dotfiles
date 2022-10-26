local status, packer = pcall(require, 'packer')
if (not status) then
  print("packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
         'svrana/neosolarized.nvim',
         requires = { 'tjdevries/colorbuddy.nvim' }
     }
<<<<<<< HEAD
 -- use 'EdenEast/nightfox.nvim' -- Theme nightfox
  use 'nvim-lualine/lualine.nvim' -- Status line
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'kyazdani42/nvim-web-devicons' -- File icons 
  use 'kyazdani42/nvim-tree.lua' -- File explorer
  use 'glepnir/lspsaga.nvim' --LSP UIs
  use 'folke/tokyonight.nvim'
=======
  use 'EdenEast/nightfox.nvim' -- Theme nightfox
  use 'folke/tokyonight.nvim' -- Theme tokyonight
  use 'nvim-lualine/lualine.nvim' -- Status line
  use 'nvim-lua/plenary.nvim' -- Common utilities / flutter-tools dependancies
  use 'kyazdani42/nvim-web-devicons' -- File icons 

  use {'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'} -- File explorer

  use 'glepnir/lspsaga.nvim' --LSP UIs
>>>>>>> bb6b362... feat(add-Flutter-LSP): added flutter lsp

  use 'onsails/lspkind-nvim' --vscode-like pictograms
  use 'L3MON4D3/LuaSnip' -- Snippet engine\  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets" -- Friendly snippet

  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

<<<<<<< HEAD
=======

>>>>>>> bb6b362... feat(add-Flutter-LSP): added flutter lsp
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

<<<<<<< HEAD
  use 'akinsho/nvim-bufferline.lua'
=======
  use {'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'} -- File explorer
>>>>>>> bb6b362... feat(add-Flutter-LSP): added flutter lsp
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'

  use({
      "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
<<<<<<< HEAD
=======

  --below is Flutter/Dart LSP :
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  use 'mfussenegger/nvim-dap' -- plenary inject exteral Debugger , and nvim-dap-ui
>>>>>>> bb6b362... feat(add-Flutter-LSP): added flutter lsp
end)
