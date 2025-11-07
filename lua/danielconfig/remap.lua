vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-j>", ":m +1<CR>==")
vim.keymap.set("n", "<C-k>", ":m -2<CR>==")
vim.keymap.set("v", "<C-k>", ":m -2<CR>gv=gv")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<BS>", "<C-o>")
vim.keymap.set("n", "<leader>sp", ":vsp<CR>")
vim.keymap.set("v", "cp", '"+y')
vim.keymap.set("n", "<leader>yl", "^v$y", { noremap = true })
vim.keymap.set("n", "<leader>yp", "^v$y$pi<CR>", { noremap = true })
vim.g.VM_maps = { ['Find Under'] = '<C-d>' }
vim.keymap.set("n", "<C-i>", "<C-a>")
vim.keymap.set("v", "<C-i>", "g<C-a>")

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format()
  end,
})
