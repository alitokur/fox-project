return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
      local ts = require("nvim-treesitter")

      --------------------------------------------------
      -- Install baseline parsers (no-op if installed)
      --------------------------------------------------
      ts.install({
        "c",
        "cpp",
        "vim",
        "python",
        "go",
        "rust",
        "lua",
        "vimdoc",
        "query",
        "bash",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "javascript",
        "html",
      }, { summary = false })

      --------------------------------------------------
      -- Enable Treesitter highlighting automatically
      --------------------------------------------------
      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("ts-auto", { clear = true }),
        callback = function(ev)
          pcall(vim.treesitter.start, ev.buf)
        end,
      })

      --------------------------------------------------
      -- Optional: Treesitter-based folding
      --------------------------------------------------
      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.opt.foldlevelstart = 25

-- zR   -- open all
-- zM   -- close all
-- zr   -- open one level
-- zm   -- close one level

      --------------------------------------------------
      -- Optional: Treesitter indentation
      --------------------------------------------------
      -- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
  },
}
