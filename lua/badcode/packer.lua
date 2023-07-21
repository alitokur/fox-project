vim.cmd.packadd('packer.nvim')

--FIXME: Not working
--
-- local ensure_packer = function()
--     local fn = vim.fn
--     local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--     if fn.empty(fn.glob(install_path)) > 0 then
--         fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--         vim.cmd [[packadd packer.nvim]]
--         return true
--     end
--     return false
-- end
-- local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- plugin manager
    use {'wbthomason/packer.nvim'}
    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- theme
    use ({ 'sainnhe/everforest' })
    --treesitter 
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use ( 'nvim-treesitter/playground' )
    use ( 'nvim-treesitter/nvim-treesitter-refactor' )
    --harpoon
    use ( 'theprimeagen/harpoon' )
    --undotree
    use ( 'mbbill/undotree' )
    --indent blankline
    use ('lukas-reineke/indent-blankline.nvim')
    --lsp
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
            {'onsails/lspkind-nvim'},
        }
    }
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
    --gitsigns.nvim
    use {
        'lewis6991/gitsigns.nvim',
    }
    --toggleterm
    use {
        "akinsho/toggleterm.nvim", tag = '*',
    }
    --symbols-outline
    use {
        "simrat39/symbols-outline.nvim"
    }
    --barbar
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'} 
    --barbecue
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
        },
        after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    })
    --scroolbar
    use("petertriho/nvim-scrollbar")
    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            require"startup".setup()
        end
    }
    use {"ecthelionvi/NeoColumn.nvim"}

    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }

    use {
        'norcalli/nvim-colorizer.lua'
    }

    use {
        'folke/todo-comments.nvim'
    }

    use{
        "folke/trouble.nvim"
    }

    use {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {}
        end
    }

    --FIXME: Not working
    -- if packer_bootstrap then
    --     require('packer').sync()
    -- end


end)



