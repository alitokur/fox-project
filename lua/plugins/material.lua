return {
  {
    "DaikyXendo/nvim-material-icon",
    lazy = false,
    priority = 1000,
    config = function()
      require("nvim-web-devicons").setup({
        color_icons = true,
        default = true,
      })
    end,
  },
}
