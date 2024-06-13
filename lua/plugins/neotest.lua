require("neotest").setup({
	adapters = {
		require("neotest-python")({
			dap = { justMyCode = false },
		}),
		require("neotest-plenary"),
		require("neotest-vim-test")({
			ignore_file_types = { "python", "vim", "lua" },
		}),
		require("neotest-dotnet"),
		require("neotest-bash"),
		require("rustaceanvim"),
		require("neotest-go"),
	},
})
