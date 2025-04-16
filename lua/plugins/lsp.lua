return {
    {   -- Mason: Ensures LSP servers are installed
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {   -- Mason LSPConfig: Integrates Mason with nvim-lspconfig
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd", "pyright" }, -- Add other LSP servers if needed
                automatic_installation = true,
            })
        end,
    },

    {   -- LSP Configuration
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            local lspconfig = require("lspconfig")
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup_handlers({
                function(server_name)
                    lspconfig[server_name].setup({})
                end,
            })

            -- Keybindings for LSP functions
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    local opts = { buffer = event.buf }
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Show Hover documentation
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Remane
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Show code actions
                    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- Show references
                end,
            })
        end,
    },

    {   -- Auto-completion with nvim-cmp
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = {
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                },
            })
        end,
    },
}

