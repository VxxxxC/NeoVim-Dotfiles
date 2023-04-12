local status, packer = pcall(require, 'packer')
if (not status) then
  print("packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'codota/tabnine-nvim', run = "./dl_binaries.sh"
  }
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }                                  -- Theme neosolarized_dark
  use 'EdenEast/nightfox.nvim'       -- Theme nightfox
  use 'nvim-lualine/lualine.nvim'    -- Status line
  use 'nvim-lua/plenary.nvim'        -- Common utilities
  use 'kyazdani42/nvim-web-devicons' -- File icons

  use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons' } -- File explorer

  use 'glepnir/lspsaga.nvim'                    --LSP UIs

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }


  use 'onsails/lspkind-nvim'         --vscode-like pictograms
  use 'L3MON4D3/LuaSnip'             -- Snippet engine\  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/cmp-buffer'           -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'         -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'             -- Completion
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets" -- Friendly snippet

  use 'neovim/nvim-lspconfig'        -- LSP

  use { 'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    { 'jose-elias-alvarez/null-ls.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  }

  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'


  use { 'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons' } -- File explorer

  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  --VScode ES7+ React/Redux/React-Native snippets
  use { 'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile'
  }

  --below is wakatime API for Github profile
  use 'wakatime/vim-wakatime'

  --Flutter plugin
  use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'
  use 'natebosch/vim-lsc'
  use 'natebosch/vim-lsc-dart'
end)
