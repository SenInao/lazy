vim.g.mapleader = " "

local keymap = vim.keymap

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<Esc>',  '<cmd>nohlsearch<CR>')
vim.keymap.set('i', '<c-c>',  '<Esc>')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers , {})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>nt', ":!start cd<CR>")

vim.keymap.set('n', '<c-p>',  ':bp<CR>')
vim.keymap.set('n', '<c-n>',  ':bn<CR>')
vim.keymap.set('n', '<c-F4>',  ':bd<CR>')

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev)
