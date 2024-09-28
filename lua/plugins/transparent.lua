return {
  "xiyaowong/transparent.nvim",
  lazy = true,
  config = function ()
    local transparent = require("transparent")
    transparent.clear_prefix("Lualine")
  end
}
