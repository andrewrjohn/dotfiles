# Vim (Neovim) Config

## Prerequisites

The following must be installed before running the setup script:

- [Homebrew](https://brew.sh/)
  - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-on-macos-or-linux)
  - `brew install neovim`

## Setting up a new machine

To get started run the `./scripts/sync_vim.sh` script (run `chmod +x ./scripts/sync_vim.sh` if you get permission errors), this will symlink the `./config/nvim` directory to the correct directory on your local machine.

That should be it! 🎉

## Notes

For obvious reasons, the `plugged` directory (where Vim installs all it's plugins) will not be be checked into Git. Running `:PlugInstall` or `:PlugClean` in Vim isn't a bad idea if you've made plugin-related changes.
