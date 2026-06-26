return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  -- when quitting the last real window, close lingering Trouble side panels
  -- first so Neovim exits cleanly (and the outline doesn't get left behind)
  init = function()
    vim.api.nvim_create_autocmd("QuitPre", {
      group = vim.api.nvim_create_augroup("trouble-autoclose", { clear = true }),
      callback = function()
        local normal_wins = 0
        local trouble_wins = {}
        for _, w in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
          local buf = vim.api.nvim_win_get_buf(w)
          local floating = vim.api.nvim_win_get_config(w).relative ~= ""
          if not floating then
            if vim.bo[buf].filetype == "trouble" then
              table.insert(trouble_wins, w)
            else
              normal_wins = normal_wins + 1
            end
          end
        end
        -- the window being quit is the last normal one -> drop Trouble panels
        if normal_wins == 1 and #trouble_wins > 0 then
          for _, w in ipairs(trouble_wins) do
            pcall(vim.api.nvim_win_close, w, false)
          end
        end
      end,
    })
  end,
  opts = {
  -- open the Trouble window as a right-side vertical split
  win = {
    position = "right",
    size = 0.35,
  },
  modes = {
    -- document symbols: persistent outline on the LEFT, doesn't steal focus
    symbols = {
      focus = false,
      follow = true,
      auto_refresh = true,
      -- compact: only icon + name (drop the dimmed detail/params and position)
      format = "{kind_icon}{symbol.name}",
      win = {
        position = "left",
        size = 40, -- fixed width in columns (was a 0.3 ratio)
      },
    },
    preview_float = {
      mode = "diagnostics",
      preview = {
        type = "float",
        relative = "editor",
        border = "rounded",
        title = "Preview",
        title_pos = "center",
        position = { 0, -2 },
        size = { width = 0.3, height = 0.3 },
        zindex = 200,
      },
    },
  },

    },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
    { "<leader>xX", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
    { "<leader>cs", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
    { "<leader>cS", "<cmd>Trouble lsp toggle<cr>", desc = "LSP references/definitions/... (Trouble)" },
    { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
    { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    {
      "[q",
      function()
        if require("trouble").is_open() then
          require("trouble").prev({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cprev)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "Previous Trouble/Quickfix Item",
    },
    {
      "]q",
      function()
        if require("trouble").is_open() then
          require("trouble").next({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cnext)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "Next Trouble/Quickfix Item",
    },
  },
}
