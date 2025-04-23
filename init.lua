-- The order of these files matters
require("config.keymaps")
require("config.options")
require("config.autocmds")

require("config.lazy")


local function set_colorscheme()
  local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
  local result = handle:read("*a") -- NOTE: result is empty unless dark.
  handle:close()

  local theme = (result:match("Dark") and "tokyonight-moon") or "tokyonight-day"
  vim.cmd.colorscheme(theme)
end

set_colorscheme()
vim.api.nvim_create_autocmd("FocusGained", { pattern = "*", callback = set_colorscheme })
