local status_ok, gitsigns = pcall(require, "scrollbar")
if not status_ok then
    return
end
require("scrollbar").setup()
