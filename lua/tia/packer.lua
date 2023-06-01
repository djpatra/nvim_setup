-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  {'nvim-telescope/telescope-fzf-native.nvim', run='make'},
  {'nvim-telescope/telescope.nvim', tag = '0.1.1'},
-- or                            , branch = '0.1.x',
}

use('nvim-lua/plenary.nvim')

use { "EdenEast/nightfox.nvim",
}

vim.cmd("colorscheme nightfox")


use {
	'nvim-treesitter/nvim-treesitter',
	run = function()
	local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
	ts_update()
	end,
}

use("nvim-treesitter/playground")
use("theprimeagen/harpoon")
use("theprimeagen/refactoring.nvim")
use("nvim-treesitter/nvim-treesitter-context");



use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
      {'glepnir/lspsaga.nvim', branch = 'main'},
      {'onsails/lspkind.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }



  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
     -- 'nvim-tree/nvim-web-devicons', -- optional
        'kyazdani42/nvim-web-devicons',
      }
  }

  use({
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
})

--use('kyazdani42/nvim-web-devicons')

use('christoomey/vim-tmux-navigator')

use('szw/vim-maximizer')

use('tpope/vim-surround')
use('vim-scripts/ReplaceWithRegister')

use('numToStr/Comment.nvim')

use('nvim-lualine/lualine.nvim')

end)
