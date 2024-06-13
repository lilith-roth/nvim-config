require("treesitter-context").setup({
	enable = true,
	max_lines = 0,
	min_window_height = 0,
	line_numbers = true,
	multiline_context = 20,
	trim_scope = "outer",
	mode = "cursor",
	seperator = nil,
	zindex = 20,
	on_attach = nil,
})
