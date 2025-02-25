vim.g.mapleader = " "
vim.g.maplocalleader = "//"

-- LaTeX
vim.api.nvim_set_keymap("n", "<leader>lc", ":!pdflatex %<CR>", { noremap = true, silent = true })


-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

vim.keymap.set({"n", "v"}, "<Leader>y", '"+y', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true })


vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })  -- Move left
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, silent = true }) -- Move right
vim.keymap.set('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })    -- Move up
vim.keymap.set('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })  -- Move down

vim.keymap.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })  -- Horizontal split
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true }) -- Vertical split

vim.keymap.set('n', '<leader>sx', ':close<CR>', { noremap = true, silent = true }) -- Close current split
