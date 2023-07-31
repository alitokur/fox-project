local status_ok, gitsigns = pcall(require, "NeoColumn")
if not status_ok then
    return
end

local config = {
  fg_color = "",
  bg_color = "",
  NeoColumn = "80",
  always_on = false,
  custom_NeoColumn = {}
}
require("NeoColumn").setup(config)
