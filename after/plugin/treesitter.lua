local status_ok, gitsigns = pcall(require, "nvim-treesitter")
if not status_ok then
    return
end

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {
        "vimdoc",
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
        "rust"
    },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

