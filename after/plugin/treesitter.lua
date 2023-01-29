require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {
        "help",
        "c",
        "cpp",
        "cmake",
        "make",
        "javascript",
        "json", "vim",
        "comment",
        "markdown",
        "lua",
        "python",
        "rust"},

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    refactor = {
        highlight_definitions = {enable = true},
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "grr",
            },
        },
    },

}

