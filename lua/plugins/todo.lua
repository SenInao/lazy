return {
  "ackeraa/todo.nvim",
  lazy = false,

  config = function()
    require("todo").setup {
    opts = {
        file_path = "path/to/save/todo.txt"
    },
}  end
}
