require("toggleterm").setup( {
    -- size can be a number or function which is passed the current terminal
    size = 75,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    direction = 'vertical',
    shade_terminal = true,
    start_in_insert = true,
    insert_mapping = true,
    terminal_mapping = true,
    persist_size = true,
    close_on_exit = true,
    autochdir = true,
    shade_filetypes = {},
})
