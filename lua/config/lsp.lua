local lspconfig = require("lspconfig")

-- Ensure texlab is set up
lspconfig.texlab.setup({})

-- Clangd configuration for C/C++
lspconfig.clangd.setup({
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  capabilities = {}, -- Ensure additional capabilities can be added if needed
  init_options = {
    compilationDatabasePath = "build", -- Use compile_commands.json
  },
})

-- Python Configuration using Pyright
lspconfig.pyright.setup({})
