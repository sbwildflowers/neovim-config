require('trouble').setup({
	icons = false
})
vim.keymap.set('n', '<leader>d', function() require("trouble").toggle() end)
