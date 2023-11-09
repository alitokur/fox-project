local status_ok, todo_comments = pcall(require, "todo-comments")
if not status_ok then
    return
end
require 'todo-comments'.setup()

vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>")
vim.keymap.set("n", "<leader>tt", ":TodoTrouble<CR>")
