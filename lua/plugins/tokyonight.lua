return {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  config = function ()
    vim.cmd([[colorscheme rose-pine]])
  end,
}

--[[
return {
	"folke/tokyonight.nvim",
	config = function()
	  vim.cmd([[colorscheme tokyonight--]] --[[)
	end
}
return {
  "AlphaTechnolog/pywal.nvim",
  lazy = false,
  priority = 1000,
  config = function ()
    require("pywal").setup()
  end
}
--]]
