return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {
    ensure_installed = { "codelldb" },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = { "clangd", "lua_ls", "pyright" },
      automatic_enable = true, -- kurulan LSP’leri otomatik enable et
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        -- formatter/linter eklemek istersen buraya
        -- "stylua", "shfmt", "clang-format"
      },
      run_on_start = true,
    },
  },
}
