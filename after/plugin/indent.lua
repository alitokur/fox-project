local status_ok, indent_blankline = pcall(require, "ibl")
if not status_ok then
    return
end


require("ibl").setup({
    scope = {
        show_start = false,
        show_end = false,
    },
}
)
