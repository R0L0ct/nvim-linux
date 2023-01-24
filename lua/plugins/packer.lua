local packer = require("packer")
packer.startup(function(use)
	-- PLUGINS MANAGER --
	use("wbthomason/packer.nvim")

	-- LSP --
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })

	-- LSP-ICONS --
	use("onsails/lspkind.nvim")

	use("jose-elias-alvarez/typescript.nvim")

	-- NULL-LS --
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("jayp0521/mason-null-ls.nvim")

	-- REST --
	use({
		"NTBBloodbath/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- IMPATIENT --
	use("lewis6991/impatient.nvim") --Speed up loading Lua modules in Neovim to improve startup time

	-- GIT --
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- DEV ICONS --
	use("kyazdani42/nvim-web-devicons")

	-- SNIP --
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- ILLUMINATE --
	use("RRethy/vim-illuminate")

	-- TELESCOPE --
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-lua/popup.nvim")

	-- TOGGLE TERM --
	use({
		"akinsho/toggleterm.nvim",
		tag = "v2.*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- STATUS LINE/TABS --
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	--TABLINE
	use({
		"kdheepak/tabline.nvim",
		requires = { { "hoob3rt/lualine.nvim", opt = true }, { "kyazdani42/nvim-web-devicons", opt = true } },
	})

	-- NVIM TREE --
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	-- Close buffers without closing splits --
	use("famiu/bufdelete.nvim")

	-- Sintaxis_Treesitter --
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("p00f/nvim-ts-rainbow")
	use("windwp/nvim-ts-autotag")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Desarrollo Web --
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("norcalli/nvim-colorizer.lua")
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use("numToStr/Comment.nvim")
	use("lukas-reineke/indent-blankline.nvim")

	-- WHICH KEY --
	-- use {
	--   "folke/which-key.nvim",
	--   config = function()
	--     require("which-key").setup {
	--       -- your configuration comes here
	--       -- or leave it empty to use the default settings
	--       -- refer to the configuration section below
	--     }
	--   end
	-- }

	-- DAP --
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("theHamsta/nvim-dap-virtual-text")
	use("nvim-telescope/telescope-dap.nvim")
	use("mxsdev/nvim-dap-vscode-js")
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npm run compile",
	})

	-- Project --
	use("ahmedkhalf/project.nvim")

	-- Lazy Git --
	use("kdheepak/lazygit.nvim")

	-- MATCH-UP --
	use("andymass/vim-matchup")

	-- MINIMAP --
	use("wfxr/minimap.vim")

	-- SILICON --
	use("segeljakt/vim-silicon")

	-- DART DEV --
	use("dart-lang/dart-vim-plugin")
	use("natebosch/vim-lsc")
	use("natebosch/vim-lsc-dart")
	use("thosakwe/vim-flutter")

	-- TEMAS --
	use("lunarvim/darkplus.nvim")
	use("lunarvim/onedarker.nvim")
	use("Mofiqul/vscode.nvim")
	use("bluz71/vim-nightfly-colors")
	-- use("bluz71/vim-moonfly-colors")
	-- use("tanvirtin/monokai.nvim")
	use("folke/tokyonight.nvim")
	use("Mofiqul/dracula.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("EdenEast/nightfox.nvim")
	use("navarasu/onedark.nvim")
	use("shaunsingh/nord.nvim")
end)
