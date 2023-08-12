local status_ok, devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
	return
end
require'nvim-web-devicons'.setup ()


