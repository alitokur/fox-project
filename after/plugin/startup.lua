local status_ok, gitsigns = pcall(require, "dashboard")
if not status_ok then
    return
end
require("startup").setup({theme = "dashboard"}) 
