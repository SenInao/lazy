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

-- Todo
keymap.set('n', '<leader>td', ':lua MyMenu()<CR>')

-- vim diagnostics
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_prev)

-- Undotree
keymap.set("n", "<leader>ut", ":UndotreeShow<CR>:UndotreeFocus<CR>")
