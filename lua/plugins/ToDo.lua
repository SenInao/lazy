return {
  "SenInao/ToDo.nvim",
  lazy = false,
  name = "ToDo",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function ()
    require("ToDo")
  end
}
