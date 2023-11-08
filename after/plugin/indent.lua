local status_ok, indent_blankline = pcall(require, "ib1")
if not status_ok then
	return
end

require("ib1").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
