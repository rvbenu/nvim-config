-- Enable line numbers and relative line numbers in `netrw`.
vim.api.nvim_create_autocmd("FileType", {  -- Whenever a file is opened, its file type is read and the event FileType is triggered. 
    pattern = "netrw",  -- If the file is `netrw`, that is, Nvim file explorer's file type... 
    callback = function() -- Lazy progrmming. 
        vim.opt_local.number = true -- Enable absolute line numbers in the netrw buffer.
        vim.opt_local.relativenumber = true -- Enable relative line numbers for easier navigation.
    end,
})

