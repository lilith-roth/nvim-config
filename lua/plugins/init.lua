vim.opt.termguicolors = true
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
    {
        "nvimdev/lspsaga.nvim",
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        }
    },
    {
        "rachartier/tiny-code-action.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope.nvim" },
        },
        event = "LspAttach",
        opts = {},
    },
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
	{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
    { "HallerPatrick/py_lsp.nvim" },
    { "mfussenegger/nvim-dap-python" },
    { "ldelossa/nvim-dap-projects" },
	-- Rust improvements
	{ "puremourning/vimspector" },
	{ "rust-lang/rust.vim", version = "^4", lazy = "false" },
    {
        "saecki/crates.nvim",
        tag = "stable",
        config = function()
            require("crates").setup()
        end,
    },
	-- Golang improvements
	{ "olexsmir/gopher.nvim", dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" } },
    -- C# improvements
    --[[{
        "iabdelkareem/csharp.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
            "Tastyep/structlog.nvim",
        },
    },]]
	-- UI
	{ "MunifTanjim/nui.nvim" },
	{ "rcarriga/nvim-notify" },
	{ "folke/noice.nvim" },
    {
        "ldelossa/litee.nvim",
        event = "VeryLazy",
    },
    {
        "ldelossa/litee-calltree.nvim",
        dependencies = "ldelossa/litee.nvim",
        event = "VeryLazy",
    },
    {
        "ldelossa/litee-filetree.nvim",
        dependencies = "ldelossa/litee.nvim",
        event = "VeryLazy",
    },
    {
        "ldelossa/litee-symboltree.nvim",
        dependencies = "ldelossa/litee.nvim",
        event = "VeryLazy",
    },
    {
        "ldelossa/litee-bookmarks.nvim",
        dependencies = "ldelossa/litee.nvim",
        event = "VeryLazy",
    },
    {
        "prichrd/netrw.nvim",
        config = function() require("netrw").setup({}) end
    },
    {
        "petertriho/nvim-scrollbar",
        config = function() require("scrollbar").setup() end
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function() require("rainbow-delimiters.setup").setup({}) end
    },
    { "kosayoda/nvim-lightbulb" },
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
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
	},
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
    -- Git Integration
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
    },
    -- Discord rich presence
    {
        "vyfor/cord.nvim",
        build = ":Cord update",
        -- opts = {}
    },
    -- code navigation
    {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "numToStr/Comment.nvim",
            "nvim-telescope/telescope.nvim",
        }
    },
    -- linting
    { "mfussenegger/nvim-lint" },
    -- Project manager
    {
        "pluffie/neoproj",
        cmd = { "ProjectOpen", "ProjectNew" },
    },
    -- indentation detector
    {
        "Abstract-IDE/penvim",
        config = function() require("penvim").setup({}) end
    },
    -- color code visualizer
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = {},
    },
    -- dashboard
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("dashboard").setup({})
        end,
        dependencies = { { "nvim-tree/nvim-web-devicons" } }
    },
    -- global notes
    { "backdround/global-note.nvim" },
    -- whitespace visualizer
    {
        "mcauley-penney/visual-whitespace.nvim",
        config = true,
        event = "ModeChanged *:[vV\22]",
        opts = {},
    },
    -- code screenshot
    { "mistricky/codesnap.nvim", build = "make" },
    -- code history
    { "y3owk1n/time-machine.nvim" },
    -- terminal improvements
    {
        "2kabhishek/termim.nvim",
        cmd = { "Fterm", "FTerm", "Sterm", "STerm", "Vterm", "VTerm" },
    },
    -- yeet - cmd runner
    {
        "samharju/yeet.nvim",
        dependencies = {
            "stevearc/dressing.nvim",
        },
        version = "*",
        cmd = "Yeet",
        opts = {},
    },
    -- test runner
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
    -- compiler
    {
        "Zeioth/compiler.nvim",
        cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
        dependencies = {
            "stevearc/overseer.nvim",
            "nvim-telescope/telescope.nvim"
        },
        opts = {},
    },
    {
        "stevearc/overseer.nvim",
        commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
        cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
        opts = {
            task_list = {
                direction = "bottom",
                min_height = 25,
                max_height = 25,
                default_detail = 1
            },
        },
    },
    -- GitHub integration
    {
        "pwntester/octo.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("octo").setup()
        end
    },
    -- keybind helper
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    -- devcontainer support
    {
        "https://codeberg.org/esensar/nvim-dev-container",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },
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
require("plugins.pylsp")
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
require("plugins.barbar")
require("plugins.comment")
require("plugins.neotest")
require("plugins.notify")
require("plugins.indent-blankline")
require("plugins.global-note")
require("plugins.codesnap")
require("plugins.litee")

