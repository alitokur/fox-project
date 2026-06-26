return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
      { "mason-org/mason.nvim", opts = {} },
      {
        "mason-org/mason-lspconfig.nvim",
        opts = {
          ensure_installed = { "clangd", "lua_ls" },
          automatic_enable = true,
        },
      },
    },
    config = function()
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local keymap = vim.keymap
      local util = require("lspconfig.util")

      local border = "rounded"

      vim.o.winborder = border
      vim.o.winblend = 0
      vim.o.pumblend = 0

      vim.diagnostic.config({
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        -- diagnostic rendering is handled by tiny-inline-diagnostic.nvim
        virtual_text = false,
        virtual_lines = false,
        float = {
          border = border,
          source = "if_many",
        },
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "",
          },
        },
      })

      local capabilities = cmp_nvim_lsp.default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
      )

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        root_dir = function(fname)
          return util.root_pattern(
            ".luarc.json",
            ".luarc.jsonc",
            ".emmyrc.json",
            ".stylua.toml",
            "stylua.toml",
            "selene.toml",
            "selene.yml",
            ".git"
          )(fname)
            or vim.fs.dirname(fname)
        end,
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
                vim.fn.stdpath("config"),
              },
            },
            telemetry = { enable = false },
          },
        },
      })

      vim.lsp.config("clangd", {
        capabilities = vim.tbl_deep_extend("force", capabilities, {
          offsetEncoding = { "utf-16" },
        }),
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
        init_options = {
          usePlaceholders = true,
          completeUnimported = true,
          clangdFileStatus = false,
        },
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
        callback = function(ev)
          local client = vim.lsp.get_client_by_id(ev.data.client_id)

          if client and client.server_capabilities then
            client.server_capabilities.semanticTokensProvider = nil
          end

          local opts = { buffer = ev.buf, silent = true }

          -- goto navigation (gd/gD/gr/gI/gy) is provided by snacks.picker

          keymap.set(
            { "n", "v" },
            "<leader>ca",
            vim.lsp.buf.code_action,
            vim.tbl_extend("force", opts, { desc = "Code Action" })
          )

          keymap.set(
            "n",
            "<leader>rn",
            vim.lsp.buf.rename,
            vim.tbl_extend("force", opts, { desc = "Rename" })
          )

          -- buffer diagnostics list is provided by snacks (<leader>sD)

          keymap.set(
            "n",
            "<leader>d",
            function()
              vim.diagnostic.open_float(nil, { border = border })
            end,
            vim.tbl_extend("force", opts, { desc = "Line Diagnostics" })
          )

          keymap.set(
            "n",
            "[d",
            function()
              vim.diagnostic.jump({ count = -1, float = true })
            end,
            vim.tbl_extend("force", opts, { desc = "Prev Diagnostic" })
          )

          keymap.set(
            "n",
            "]d",
            function()
              vim.diagnostic.jump({ count = 1, float = true })
            end,
            vim.tbl_extend("force", opts, { desc = "Next Diagnostic" })
          )

          keymap.set(
            "n",
            "K",
            function()
              vim.lsp.buf.hover({
                border = border,
                max_width = 100,
                max_height = 25,
              })
            end,
            vim.tbl_extend("force", opts, { desc = "Hover" })
          )

          keymap.set(
            "n",
            "<leader>-k",
            function()
              vim.lsp.buf.signature_help({
                border = border,
                max_width = 100,
                max_height = 25,
              })
            end,
            vim.tbl_extend("force", opts, { desc = "Signature Help" })
          )

          keymap.set(
            "n",
            "<leader>rs",
            "<cmd>LspRestart<CR>",
            vim.tbl_extend("force", opts, { desc = "Restart LSP" })
          )

          if client and client.name == "clangd" then
            keymap.set(
              "n",
              "<leader>ch",
              "<cmd>ClangdSwitchSourceHeader<CR>",
              { buffer = ev.buf, silent = true, desc = "Switch Source/Header (C/C++)" }
            )
          end

          if vim.lsp.inlay_hint then
            pcall(vim.lsp.inlay_hint.enable, true, { bufnr = ev.buf })
          end

          if vim.lsp.codelens then
            pcall(vim.lsp.codelens.refresh)
            vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
              buffer = ev.buf,
              callback = function()
                pcall(vim.lsp.codelens.refresh)
              end,
            })
          end
        end,
      })
    end,
  },
}
