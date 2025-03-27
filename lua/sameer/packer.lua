vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use({ 'wbthomason/packer.nvim' })

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })

    use({
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    })

    use({ "nvim-treesitter/nvim-treesitter", { run = ':TSUpdate' } })
    use({ "nvim-treesitter/playground" })
    use({ "ThePrimeagen/harpoon" })
    use({ "tpope/vim-fugitive" })

    use({ 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' })
    use({ 'neovim/nvim-lspconfig' })
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'hrsh7th/cmp-nvim-lsp' })
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })

    use({ "folke/which-key.nvim" })
    use({ "nvim-tree/nvim-web-devicons" })

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use({
        "echasnovski/mini.icons",
        config = function()
            require("mini.icons").setup {}
        end
    })

    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        run = "make install_jsregexp"
    })

    use({ "rafamadriz/friendly-snippets" })

    use {
        's1n7ax/nvim-search-and-replace',
        config = function() require 'nvim-search-and-replace'.setup() end,
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }


    use {
        'h4ckm1n-dev/kube-utils-nvim',
        requires = { 'nvim-telescope/telescope.nvim', opt = true }
    }

    use {
        '/home/sameer/Desktop/propster',
        config = function()
            local status, propster = pcall(require, 'propster')
            if not status then
                vim.notify("Failed to load propster: " .. propster, vim.log.levels.ERROR)
            else
                vim.notify("Propster loaded successfully!", vim.log.levels.INFO)
                propster.setup_commands() -- Call the greet function for testing
            end
        end
    }

    use {
        'ldelossa/gh.nvim',
        requires = { { 'ldelossa/litee.nvim' } }
    }
end)
