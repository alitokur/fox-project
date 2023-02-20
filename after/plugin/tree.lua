-- examples for your init.lua disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
--require("nvim-tree").setup()
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

local function open_nvim_tree(data)
  local is_real_file = vim.fn.filereadable(data.file) == 1
  local is_no_name_file = data.file == "" and vim.bo[data.buf].buftype == ""
  local is_a_directory = vim.fn.isdirectory(data.file) == 1

  if is_a_directory then
    vim.cmd.cd(data.file)
    require("nvim-tree.api").tree.open()
    return
  end

  -- if is_real_file or is_no_name_file then
  --   require("nvim-tree.api").tree.toggle { focus = false, find_file = true }
  --   return
  -- end
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

local HEIGHT_RATIO = 0.8  -- You can change this
local WIDTH_RATIO = 0.5   -- You can change this too

require('nvim-tree').setup({
  view = {
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * WIDTH_RATIO
        local window_h = screen_h * HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
        return {
          border = 'rounded',
          relative = 'editor',
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
        end,
    },
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
  },
})
