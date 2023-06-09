-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
 	
	-- Telescope
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Colour theme
	use({ 'rose-pine/neovim', as = 'rose-pine' })
    use ('folke/tokyonight.nvim')
	vim.cmd('colorscheme tokyonight-moon')

    -- Lua Line
    use{
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true}
    }

	-- Tree Sitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	-- Harpoon - Used for setting files to allocated numbers(fast switching)
	use('theprimeagen/harpoon')

	-- Undo Tree
	use('mbbill/undotree')

	-- Git intergration
	use('tpope/vim-fugitive')

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-buffer'},   -- added
		{'hrsh7th/cmp-path'},     -- added
		{'hrsh7th/cmp-nvim-lua'}, -- added
		{'rafamadriz/friendly-snippets'}, -- added
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
end)



