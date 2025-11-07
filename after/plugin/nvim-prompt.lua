require('nvim-prompt.config').setup({
	url = "http://192.168.0.104:1234/v1/chat/completions",
	model = "qwen2.5-coder-14b-instruct"
})

local prompt = require('nvim-prompt.ui')

vim.keymap.set("v", "<leader>ec", function() vim.cmd('normal! "zy') prompt:get_explanation() end, { noremap = true })
vim.keymap.set("n", "<leader>aq", function() prompt:start_prompting() end)


