-- Setting the Leader Keys (Shortcut Prefix)

-- `Leader` is a special key used to define shortcuts.
-- The default leader in Neovim is `\`, but we change it to **space (" ")** for easier access.
vim.g.mapleader = " "

-- `LocalLeader` is similar to `Leader`, but used for buffer-local shortcuts.
-- We set it to `//` (can be changed based on preference).
vim.g.maplocalleader = "//"

-- Key Mapping Format

-- `vim.keymap.set({mode}, {lhs}, {rhs}, {opts})`
-- - `{mode}` → Which modes the keymap applies to (`"n"`, `"v"`, `"i"`, etc.).
-- - `{lhs}` → The key combination to trigger the mapping.
-- - `{rhs}` → The action/command to execute.
-- - `{opts}` → Extra options (e.g., `noremap = true`, `silent = true`).

-- Copy to System Clipboard (Yank to `+` Register)
vim.keymap.set({"n", "v"}, "<Leader>y", '"+y', { noremap = true, silent = true })

-- Open File Explorer (`netrw`)
vim.keymap.set('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true })


-- Moving Between Split Windows (Pane Navigation)

-- Navigate **left** to the next split window
vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })  
-- Navigate **right** to the next split window
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, silent = true }) 
-- Navigate **up** to the next split window
vim.keymap.set('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })    
-- Navigate **down** to the next split window
vim.keymap.set('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })  


-- Creating and Closing Split Windows

-- Create a **horizontal** split
vim.keymap.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })  
-- Create a **vertical** split
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true }) 
-- Close the **current split window**
vim.keymap.set('n', '<leader>sx', ':close<CR>', { noremap = true, silent = true }) 

