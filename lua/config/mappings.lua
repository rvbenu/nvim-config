vim.g.mapleader = " "
vim.g.maplocalleader = "//"

-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

vim.keymap.set({"n", "v"}, "<Leader>y", '"+y', {noremap = true, silent = true})
