local lsp = require('lsp-zero').preset({"recommended"})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr})

    -- Neovim LSP Pickers
    -- https://github.com/nvim-telescope/telescope.nvim#neovim-lsp-pickers
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', {buffer = true})
    vim.keymap.set('n', 'gs', '<cmd>Telescope lsp_document_symbols<cr>', {buffer = true})
    vim.keymap.set('n', 'gD', '<cmd>Telescope lsp_implementations<cr>', {buffer = true})
    vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', {buffer = true})
end)

-- list: https://github.com/williamboman/mason-lspconfig.nvim
lsp.ensure_installed({
    "clangd",
    "lua_ls",
    "marksman",
    "pyre",
    "rust_analyzer",
    "cmake",
    "bashls",
    "lemminx",
    "ltex",
    "jsonls",
    "docker_compose_language_service",
})

lsp.set_sign_icons({
      error = "",
      warn = "",
      hint = "",
      info = "",
      other = "",

})

--formatter
--cf is using 2 space as a tab :(
-- FIXME: modify clang formatter
-- lsp.format_on_save({
--     format_opts = {
--         async = false,
--         timeout_ms = 10000,
--     },
--     servers = {
--         ['clangd'] = {'cpp'},
--     }
-- })

-- keybinding

lsp.setup()

-- ####### CMP ######## --
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
    -- sources
    select_behavior = 'insert',
    sources = {
        {name = 'nvim_lsp'},
        {name = 'path'},
        {name = 'buffer'},
        {name = 'luasnip'},
    },
    -- key-mapping
    mapping = {
        ["<Tab>"] = cmp_action.luasnip_supertab(),
        ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    },
    --snippets
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  --windows
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
  --formating
  formatting = {
      fields = {'abbr', 'kind', 'menu'},
      format = require('lspkind').cmp_format({
          mode = 'symbol_text', -- show only symbol annotations
          maxwidth = 50, -- prevent the popup from showing more than provided characters
          ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
      })
  },
})

require('luasnip.loaders.from_vscode').lazy_load()
