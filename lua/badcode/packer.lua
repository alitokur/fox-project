local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
})

-- vim.cmd.packadd('packer.nvim')
return packer.startup(function(use)
    -- plugin manager
    use 'wbthomason/packer.nvim'
    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- theme
    -- -- use ({ 'sainnhe/everforest' })
    -- use({
    --     "neanias/everforest-nvim",
    --     -- Optional; default configuration will be used if setup isn't called.
    -- })
    use { "catppuccin/nvim", as = "catppuccin" }
    --treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use ( 'nvim-treesitter/playground' )
    --harpoon
    use ( 'theprimeagen/harpoon' )
    --undotree
    use ( 'mbbill/undotree' )
    --indent blankline
    use ('lukas-reineke/indent-blankline.nvim')
    --lsp 
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.api.nvim_command, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        {'hrsh7th/cmp-path'},
        {"rafamadriz/friendly-snippets"},
        {"saadparwaiz1/cmp_luasnip"},
        {"hrsh7th/cmp-buffer"},

        --lspkind
        {"onsails/lspkind-nvim"},
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
    'norcalli/nvim-colorizer.lua'
}

use {
    'folke/todo-comments.nvim'
}

use{
    "folke/trouble.nvim"
}

use 'folke/lsp-colors.nvim'

use {
    'rmagatti/goto-preview',
    config = function()
        require('goto-preview').setup {}
    end
}

-- lazygit 
use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
})

-- search
use {'kevinhwang91/nvim-hlslens'}

use {
'tomasky/bookmarks.nvim',
-- tag = 'release' -- To use the latest release
}

use { 'axkirillov/hbac.nvim' }


use 'mfussenegger/nvim-lint'

use { 'christoomey/vim-tmux-navigator' }

use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

if packer_bootstrap then
    require('packer').sync()
end

end)
