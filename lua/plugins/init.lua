require("plugins.remap")
require("plugins.lazy")
require("lazy").setup({
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	-- Themes
	{ "rose-pine/neovim", as = "rose-pine" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
	{ "Shatur/neovim-ayu" },
	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-context" },
	-- Harpoon
	{ "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
	-- Undotree
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive" },
	-- LSP
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	-- Formatter
	{ "mhartington/formatter.nvim" },
	-- LSP Manager Mason
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "hrsh7th/cmp-vsnip" },
	{ "hrsh7th/vim-vsnip" },
	{ "L3MON4D3/LuaSnip" },
	{ "rafamadriz/friendly-snippets" },
	-- Cheat Sheet
	{ "doctorfree/cheatsheet.nvim" },
	{ "folke/lazydev.nvim" },
	-- Debugger
	{ "nvim-neotest/nvim-nio" },
	{ "mfussenegger/nvim-dap" },
	{ "pocco81/dap-buddy.nvim" },
	{ "rcarriga/nvim-dap-ui" },
	-- Rust improvements
	{ "simrat39/rust-tools.nvim" },
	{ "puremourning/vimspector" },
	{ "rust-lang/rust.vim", version = "^4", lazy = "false" },
	-- Golang improvements
	{ "olexsmir/gopher.nvim", dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" } },
	-- UI
	{ "MunifTanjim/nui.nvim" },
	{ "rcarriga/nvim-notify" },
	{ "folke/noice.nvim" },
	-- Diagnostics
	{ "folke/trouble.nvim", cmd = "Trouble" },
	-- Theme switcher
	{ "zaldih/themery.nvim" },
	-- markdown support
	{ "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
	-- folding
	{ "kevinhwang91/promise-async" },
	{ "kevinhwang91/nvim-ufo", requires = { "kevinhwang91/promise-async" } },
	-- Exit confirmation
	{ "yutkat/confirm-quit.nvim", event = "CmdlineEnter", opts = {} },
	-- csv support
	{
		"Vidocqh/data-viewer.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"kkharji/sqlite.lua",
		},
	},
	-- Status bar
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	-- Tab support
	--[[ {
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
	}, ]]
	-- commenting
	{ "numToStr/Comment.nvim", opts = {} },
	-- Testing
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",

			"nvim-neotest/neotest-python",
			"nvim-neotest/neotest-plenary",
			"akinsho/neotest-go",
			"mrcjkb/rustaceanvim",
			"Issafalcon/neotest-dotnet",
			"rcasia/neotest-bash",
			"nvim-neotest/neotest-vim-test",
		},
	},
	-- Ident highlighting
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
})
require("plugins.rose-pine")
require("plugins.treesitter")
require("plugins.harpoon")
require("plugins.undotree")
require("plugins.vim-fugitive")
require("plugins.lsp-zero")
require("plugins.set")
require("plugins.dap")
require("plugins.dapui")
require("plugins.rust-tools")
require("plugins.rustaceanvim")
require("plugins.formatter")
require("plugins.treesitter-context")
require("plugins.noice")
require("plugins.trouble-nvim")
require("plugins.cheatsheet")
require("plugins.themery")
require("plugins.gopher")
require("plugins.ufo")
require("plugins.data-viewer")
require("plugins.lualine")
-- require("plugins.barbar")
require("plugins.comment")
require("plugins.neotest")
require("plugins.notify")
require("plugins.indent-blankline")
print("Welcome Dominique <3")
