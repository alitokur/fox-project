local status_ok, gitsigns = pcall(require, "todo-comments")
if not status_ok then
    return
end
require 'todo-comments'.setup()
