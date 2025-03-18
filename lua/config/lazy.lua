-- Bootstrap `lazy.nvim` (automatically installs lazy.nvim if missing)

-- `stdpath("data")` gets Neovim’s data directory (usually `~/.local/share/nvim/` on Linux/macOS or `C:\Users\YourUser\AppData\Local\nvim-data\` on Windows).
-- We append `/lazy/lazy.nvim` to this path to define where lazy.nvim should be stored.
-- `vim.fn.stdpath()` is a Neovim function that returns standard paths used by Neovim for configuration, data, and runtime files.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is already installed by verifying if the `lazy.nvim` folder exists. 
-- `vim.uv or vim.loop` provides non-blocking, async operations (so Neovim doesn’t freeze).
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- If the folder is missing, we clone `lazy.nvim` from GitHub.
  -- This ensures that when you open Neovim, `lazy.nvim` is installed automatically if not present.
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"

  -- `git clone --filter=blob:none --branch=stable`:
  -- - `--filter=blob:none`: Only downloads the latest commits, reducing size.
  -- - `--branch=stable`: Ensures we're cloning the stable version, not the latest development version.
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

  -- Check if the cloning process was successful.
  if vim.v.shell_error ~= 0 then
    -- If cloning failed, show an error message in Neovim.
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})

    -- Wait for the user to press a key before exiting.
    vim.fn.getchar()
    os.exit(1) -- Exit Neovim to prevent further errors.
  end
end

-- Prepend lazy.nvim to the runtime path (`rtp`), so Neovim can find and use it.
vim.opt.rtp:prepend(lazypath)






-- Setup `lazy.nvim` (Configuring Plugins)
require("lazy").setup({
  spec = {
    -- Import a separate plugin list from the `lua/plugins/` directory.
    { import = "plugins" },
  },

  -- Enable plugin updates checker (checks for plugin updates periodically).
  checker = { enabled = true },
})
