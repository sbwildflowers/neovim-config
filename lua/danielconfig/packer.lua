-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'rebelot/kanagawa.nvim', as = "kanagawa", config = function() vim.cmd.colorscheme("kanagawa") end }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }
  use('ThePrimeagen/git-worktree.nvim')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('preservim/nerdtree')
  use('sheerun/vim-polyglot')
  use('coc-extensions/coc-svelte')
  use('preservim/nerdcommenter')
  use('sindrets/diffview.nvim')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
		  {'windwp/nvim-autopairs'},
		  {'windwp/nvim-ts-autotag'},
	  }
  }
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use('folke/twilight.nvim')
  use({
		'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end
	})
  use({
		'folke/trouble.nvim',
		requires = { {'nvim-tree/nvim-web-devicons'} }
	})
end)
