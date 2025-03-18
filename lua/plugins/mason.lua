return {
  -- Mason: Portable Package Manager for Neovim (Manages LSPs, Linters, and Debuggers)

  -- `mason.nvim` is a plugin that **installs and manages external tools** such as:
  -- - LSP servers (clangd, pyright, tsserver, etc.)
  -- - Debuggers (DAP)
  -- - Linters (eslint, pylint, shellcheck)
  -- - Formatters (prettier, stylua, black, shfmt)
  --
  -- Instead of manually installing these tools system-wide, Mason **handles everything for you**.
  "williamboman/mason.nvim",

  -- Mason-LSPConfig: Bridges Mason with Neovim's Built-in LSP

  -- `mason-lspconfig.nvim` makes it **easy to install and configure LSPs**.
  -- It ensures that Mason and Neovim's built-in LSP work seamlessly together.
  --
  -- Features:
  -- Automatically installs missing LSP servers.
  -- Simplifies LSP setup (reduces manual configuration).
  -- Works alongside `nvim-lspconfig`.
  "williamboman/mason-lspconfig.nvim",

  -- Neovim LSP Config: Default Configurations for Language Servers

  -- `nvim-lspconfig` provides **default configurations** for many LSPs.
  -- It makes setting up LSPs **easier**, so you don’t have to manually configure everything.
  --
  -- Without this plugin, you would need to manually write **a lot** of boilerplate code
  -- just to get LSPs working correctly.
  "neovim/nvim-lspconfig",

  -- (Optional) UI Enhancements for Mason

  -- Mason comes with a built-in UI (`:Mason`), but this can add **additional UI improvements**.
  -- You can remove this if you don’t need any extra UI features.
  "williamboman/mason.nvim",
}
