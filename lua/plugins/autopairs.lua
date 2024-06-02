return {
	"windwp/nvim-autopairs",
  lazy = false,
	event = "InsertEnter",
	config = function ()
    require("nvim-autopairs").setup {}
	end,
}
