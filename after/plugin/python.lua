local function runCurrentPythonFile()
	local fileName = vim.api.nvim_buf_get_name(0)
	local pyCommand = vim.api.nvim_replace_termcodes('ipython3 \"' .. fileName .. "\"<cr>", true, false, true)
	local buffers = vim.api.nvim_list_bufs()

	for _, bufnr in ipairs(buffers) do
		local buf_type = vim.api.nvim_buf_get_option(bufnr, 'buftype')
		local cmd = vim.fn.getbufvar(bufnr, '&l:term_finish_job')

		if buf_type == 'terminal' and cmd == pyCommand then
			vim.cmd(bufnr .. 'wincmd w')
			return
		end
	end
	local percentOfWindow = 0.4
	local currentWindowHeight = vim.api.nvim_win_get_height(0)
	local terminalHeight = math.floor(currentWindowHeight * percentOfWindow)
	vim.cmd(":below" .. terminalHeight .. "split | term")

	vim.api.nvim_feedkeys(pyCommand, "t", false)
end

vim.keymap.set("n", "<leader>rp", "", {
	desc = "Run buffered .py file in built-in terminal",
	callback = runCurrentPythonFile
})
