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

-- split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- open splits and move into them
vim.keymap.set("n", "<leader>_", "<C-w>s<C-w>j", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>-", "<C-w>v<C-w>l", { desc = "Vertical split" })

-- move between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- resize splits
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Resize split right" })

-- useful extras
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Equalize splits" })
vim.keymap.set("n", "<leader>x", "<C-w>c", { desc = "Close current split" })
vim.keymap.set("n", "<leader>o", "<C-w>o", { desc = "Close other splits" })

-- behavior
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")

vim.o.winborder = "rounded"
