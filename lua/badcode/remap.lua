-- 
vim.g.mapleader = " "

--move with J-K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--take the below line and appends it to current line
vim.keymap.set("n", "J", "mzJ`z")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

--half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--keep cursor in the middle when you serch it
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

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

--splits size
vim.keymap.set("n", "<A-d>", ":vertical resize +3<CR>")
vim.keymap.set("n", "<A-a>", ":vertical resize -3<CR>")
vim.keymap.set("n", "<A-w>", ":resize +3<CR>")
vim.keymap.set("n", "<A-s>", ":resize -2<CR>")

--change 2 splits
vim.keymap.set("n", "<leader>th", "<C-w>t<C-w>H")
vim.keymap.set("n", "<leader>tk", "<C-w>t<C-w>K")

--search

-- Cancel search highlighting with ESC
vim.keymap.set("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>")
