-- lua/config/mason.lua
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "clangd", "pyright" }, -- Ensure these servers are installed
  automatic_installation = true,
})
