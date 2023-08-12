local status_ok, colors = pcall(require, "everforest")
if not status_ok then
	return
end
require("everforest").load()
-- vim.cmd [[set background=dark]]
-- vim.cmd [[set termguicolors]]
-- vim.cmd[[let g:everforest_background = 'hard']]
-- vim.cmd[[let g:everforest_better_performance = 1]]
-- vim.cmd[[let g:everforest_ui_contrast = 'high']]
-- vim.cmd [[colorscheme everforest]]



