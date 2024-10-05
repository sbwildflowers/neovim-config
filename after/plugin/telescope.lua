local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep < ") });
end)
vim.keymap.set('n', '<leader>ff', function()
	local searchterm = vim.fn.input("Grep < ")
	if searchterm == '' then
		searchterm = vim.fn.expand('cword')
	end

	local filetype = vim.fn.input('File type < ')
	if filetype == '' then
		filetype = '*.*'
	end
	builtin.live_grep({ default_text = searchterm, glob_pattern = filetype })
end)
require("telescope").load_extension("git_worktree")
