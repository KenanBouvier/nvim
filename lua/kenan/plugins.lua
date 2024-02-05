local fn = vim.fn

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Plugins
return packer.startup(function(use)
    use { "wbthomason/packer.nvim"}
    use { "nvim-lua/plenary.nvim"}
    use { "windwp/nvim-autopairs"}
    use { "numToStr/Comment.nvim"}
    use { "akinsho/bufferline.nvim"}
    use { "moll/vim-bbye"}
    use { "nvim-lualine/lualine.nvim"}
    use { "lewis6991/impatient.nvim"}

    -- Colorschemes
    use { "folke/tokyonight.nvim"}
    use {"rose-pine/neovim"}

    -- LSP & Cmp

    use { "RRethy/vim-illuminate"}

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
	  }
  }

    use { "nvim-telescope/telescope.nvim"}
    use {"nvim-treesitter/nvim-treesitter"}

    use {"windwp/nvim-ts-autotag"}
end)
