require("git-worktree").setup()

vim.keymap.set("n", "<Leader>wt", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
vim.keymap.set("n", "<Leader>wn", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
vim.keymap.set("n", "<Leader>wd", "<CMD>lua require('telescope').extensions.git_worktree.delete_worktree()<CR>")
