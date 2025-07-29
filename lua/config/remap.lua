vim.g.mapleader = " "
--command mode with ENTER
vim.keymap.set("n", "<CR>", ":")
--move with J-K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- paste with buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- splits and tabbed files
vim.keymap.set("n", "<A-h>", "<C-w>s")
vim.keymap.set("n", "<A-v>", "<C-w>v")
-- movement
vim.keymap.set("n", "<C-h>", "<c-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
