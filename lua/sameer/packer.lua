vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use ({'wbthomason/packer.nvim'})

  use ({
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
   })

   use ({
     "rose-pine/neovim", as = "rose-pine",
     config = function()
	     vim.cmd("colorscheme rose-pine")
        end
     })
  
    use ({"nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'}})
    use ({"nvim-treesitter/playground"})
    use ({"ThePrimeagen/harpoon"})
    use ({"tpope/vim-fugitive"})
   
    use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
    use({'neovim/nvim-lspconfig'})
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-nvim-lsp'})
    use({"williamboman/mason.nvim"})
    use ({"williamboman/mason-lspconfig.nvim"})

    use ({"folke/which-key.nvim"})  
    use ({"nvim-tree/nvim-web-devicons"})

   use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
         require("nvim-autopairs").setup {}
      end
    }

    use ({ "echasnovski/mini.icons",
      config = function()
         require("mini.icons").setup {}
      end
    })

   use({
  	  "L3MON4D3/LuaSnip",
	  tag = "v2.*",  	 
      run = "make install_jsregexp"
    })

    use({"rafamadriz/friendly-snippets"})

end)

