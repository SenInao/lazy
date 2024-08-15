return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function ()
    local transparent = require("transparent")
    transparent.clear_prefix("Lualine")
  end
}
