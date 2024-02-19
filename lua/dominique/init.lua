require("dominique.remap")
require("dominique.lazy")
require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{ "rose-pine/neovim", as = "rose-pine" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "L3MON4D3/LuaSnip" },
	{ "rafamadriz/friendly-snippets" },
    { "sudormrfbin/cheatsheet.nvim" },
    { "mfussenegger/nvim-dap" },
})
require("dominique.rose-pine")
require("dominique.treesitter")
require("dominique.harpoon")
require("dominique.undotree")
require("dominique.vim-fugitive")
require("dominique.lsp-zero")
require("dominique.set")
require("dominique.dap")
print("Welcome Dominique <3")
