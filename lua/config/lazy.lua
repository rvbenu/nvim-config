-- Setup `lazy.nvim`. 


-- `stdpath("data")` gets Neovim’s data directory (usually `~/.local/share/nvim/` on Linux/macOS or `C:\Users\YourUser\AppData\Local\nvim-data\` on Windows).

-- We append `/lazy/lazy.nvim` to this path to define where lazy.nvim should be stored.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is already installed by verifying if the `lazy.nvim` folder exists. 
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- If the folder is missing, we clone `lazy.nvim` from GitHub.
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"

  -- `--filter=blob:none`: Only downloads the latest commits, reducing size.
  -- `--branch=stable`: Ensures we're cloning the stable version, not the latest development version.
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})

    -- Wait for the user to press a key before exiting.
    vim.fn.getchar()
    os.exit(1) 
  end
end

-- Prepend lazy.nvim to the runtime path (`rtp`), so Neovim can find and use it.
vim.opt.rtp:prepend(lazypath)

-- Setup `lazy.nvim`. 
require("lazy").setup({
  spec = {
    { import = "plugins" },
 -- { import = "plugins.ui" },
  },
  checker = { enabled = true },
})
