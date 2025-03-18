



-- Enable line numbers and relative line numbers in `netrw`.
--
-- Whenever a file is opened, the event FileType is triggered. 
-- `netrw` is NVim's file explorer file type. 
vim.api.nvim_create_autocmd("FileType", {  
    pattern = "netrw",  
    callback = function() 
        vim.opt_local.number = true 
        vim.opt_local.relativenumber = true 
    end,
})

