local dap = require("dap")
local homedir = os.getenv("HOME")
dap.adapters.coreclr = {
	type = "executable",
	command = homedir .. "/.local/share/nvim/mason/bin/netcoredbg",
	args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
	{
		type = "coreclr",
		name = "launch - netcoredbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/", "file")
		end,
	},
}
