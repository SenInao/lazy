return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function ()
    local transparent = require("transparent")

    transparent.setup()
    transparent.clear_prefix("BufferLine")
  end
}
