vim.g.mapleader = " "

-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

vim.keymap.set({"n", "v"}, "<Leader>y", '"+y', {noremap = true, silent = true})
