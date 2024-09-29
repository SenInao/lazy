return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup({
      settings = {
        save_on_toggle = true
      }
    })


    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

    vim.keymap.set("n", "<M-h>", function() harpoon:list():select(5) end)
    vim.keymap.set("n", "<M-j>", function() harpoon:list():select(6) end)
    vim.keymap.set("n", "<M-k>", function() harpoon:list():select(7) end)
    vim.keymap.set("n", "<M-l>", function() harpoon:list():select(8) end)

    vim.keymap.set("n", "<leader><C-h>", function () harpoon:list():replace_at(1) end)
    vim.keymap.set("n", "<leader><C-j>", function () harpoon:list():replace_at(2) end)
    vim.keymap.set("n", "<leader><C-k>", function () harpoon:list():replace_at(3) end)
    vim.keymap.set("n", "<leader><C-l>", function () harpoon:list():replace_at(4) end)

    vim.keymap.set("n", "<leader><M-h>", function () harpoon:list():replace_at(5) end)
    vim.keymap.set("n", "<leader><M-j>", function () harpoon:list():replace_at(6) end)
    vim.keymap.set("n", "<leader><M-k>", function () harpoon:list():replace_at(7) end)
    vim.keymap.set("n", "<leader><M-l>", function () harpoon:list():replace_at(8) end)
  end
}
