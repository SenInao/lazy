local keymap = vim.keymap

keymap.set('n', '<Esc>',  '<cmd>nohlsearch<CR>')
keymap.set('i', '<C-c>',  '<Esc>')

-- Telescope
local builtin = require("telescope.builtin")
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader><leader>', builtin.buffers , {})
keymap.set('n', '<leader>sd', builtin.diagnostics, {})
keymap.set('n', '<leader>lg', builtin.live_grep, {})

-- New cmd (windows)
keymap.set('n', '<leader>nt', ":!start cd<CR><CR>")

-- close buffuer
keymap.set('n', '<c-F4>',  ':bd<CR>')

-- Todo
keymap.set('n', '<leader>to', ':Todo<CR>')

-- vim diagnostics
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_prev)
