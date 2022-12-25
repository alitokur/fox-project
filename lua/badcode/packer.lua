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
  use { "ellisonleao/gruvbox.nvim" }

  -- parser
  use ({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use ( 'nvim-treesitter/playground' )

  use ( 'theprimeagen/harpoon' )

  use ( 'mbbill/undotree' )

  use ( 'tpope/vim-fugitive' )

  --auto complete
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

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
end)
