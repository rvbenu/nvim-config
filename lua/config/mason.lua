-- Mason Setup (Neovim's LSP Installer)

-- `mason.nvim` is a plugin that **manages LSP servers, DAPs (debuggers), linters, and formatters**.
-- Instead of manually installing these tools, Mason makes it **automatic and easy**.
require("mason").setup()

-- `mason-lspconfig.nvim` **bridges Mason and Neovim's built-in LSP**.
-- It ensures that specified LSPs are installed and ready to use.
require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "pyright" }, -- Ensures these LSPs are installed automatically
                                                -- Add more LSP names to the list. 
    automatic_installation = true, -- Installs any missing LSPs automatically
})
