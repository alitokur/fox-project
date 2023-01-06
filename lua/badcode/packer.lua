vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'
  -- fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- theme
  -- gruvbox
  --use { "ellisonleao/gruvbox.nvim" }

  -- github themes
  -- use ({ 'projekt0n/github-nvim-theme' })

  -- onedark
  use 'navarasu/onedark.nvim'

  -- parser
  use ({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use ( 'nvim-treesitter/playground' )

  use ( 'theprimeagen/harpoon' )

  use ( 'mbbill/undotree' )

  use ( 'tpope/vim-fugitive' )

  use ('rebelot/heirline.nvim')
  --auto complete

  --indent blankline
  use ('lukas-reineke/indent-blankline.nvim')

  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          -- LSP Support
          { 'neovim/nvim-lspconfig' },
          { 'williamboman/mason.nvim' },
          { 'williamboman/mason-lspconfig.nvim' },

          -- Autocompletion
          { 'hrsh7th/nvim-cmp' },
          { 'hrsh7th/cmp-buffer' },
          { 'hrsh7th/cmp-path' },
          { 'saadparwaiz1/cmp_luasnip' },
          { 'hrsh7th/cmp-nvim-lsp' },
          { 'hrsh7th/cmp-nvim-lua' },

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }

  use("folke/zen-mode.nvim")

  --file browser
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  --airline
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  --comment
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

end)

