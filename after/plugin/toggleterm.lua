local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

require("toggleterm").setup( {
    -- size can be a number or function which is passed the current terminal
    size = 30,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    direction = 'horizontal',
    shade_terminal = true,
    start_in_insert = true,
    insert_mapping = true,
    terminal_mapping = true,
    persist_size = true,
    close_on_exit = true,
    autochdir = true,
    shade_filetypes = {},
})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
