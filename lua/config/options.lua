

-- Enable line number and relative line number
vim.opt.number = true
vim.opt.relativenumber = true


-- LSP error/warning signs appeared to the left of line numbers, shifting the layout unpleasantly. 
-- Fix this by having the sign column always active. 
vim.opt.signcolumn = "yes"

-- Width of a tab is 4. 
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Use number of spaces to insert a <Tab>
vim.opt.expandtab = true
