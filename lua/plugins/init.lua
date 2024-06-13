require("plugins.remap")
require("plugins.lazy")
require("lazy").setup({
    -- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
    -- Theme
	{ "rose-pine/neovim", as = "rose-pine" },
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
    -- UI
    { "MunifTanjim/nui.nvim" },
    { "rcarriga/nvim-notify" },
    { "folke/noice.nvim" },
    -- Diagnostics
    { "folke/trouble.nvim", cmd = "Trouble" },
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
print("Welcome Dominique <3")
