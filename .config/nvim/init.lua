vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("map")

-- Make sure we don"t use space bar for anything else
map({ "n", "<SPACE>", "<Nop>" })

-- Map <Leader> to space bar
vim.g.mapleader = " "

map({ "i", "jk", "<Esc>" })
-- space + l to go to last file in buffer
map({ "n", "<Leader>l", "<C-^>" })

-- clear search highlights on escape
map({ "n", "<Esc>", ":noh<CR>" })

local set = vim.opt

set.number = true
set.relativenumber = true
set.scrolloff = 8
set.signcolumn = "yes"
set.colorcolumn = "100"
set.cursorline = true
set.ignorecase = true
set.smartcase = true
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true

-- Colors
set.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
require("lazy").setup("plugins", opts)
