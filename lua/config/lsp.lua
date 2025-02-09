-- lua/config/lsp.lua
local lspconfig = require("lspconfig")

-- C++ Configuration using clangd
lspconfig.clangd.setup({
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  -- Optional: Add additional settings or capabilities here
})

-- Python Configuration using pyright
lspconfig.pyright.setup({
  -- Optional: Add additional settings or capabilities here
})
