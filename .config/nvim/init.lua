require("plugins")
require("map")

-- Make sure we don"t use space bar for anything else
map {"n", "<SPACE>", "<Nop>"}

-- Map <Leader> to space bar
vim.g.mapleader = " "

map {"i", "jk", "<Esc>"}
-- space + l to go to last file in buffer
map {"n", "<Leader>l", "<C-^>"}
-- easier split navigation
map {"n", "<C-J>", "<C-W><C-J>"}
map {"n", "<C-K>", "<C-W><C-K>"}
map {"n", "<C-L>", "<C-W><C-L>"}
map {"n", "<C-H>", "<C-W><C-H>"}

-- clear search highlights on escape
map {"n", "<Esc>", ":noh<CR>"}
-- NERDTree
map {"n", "<C-n>", ":NERDTreeToggle %<CR>"}
-- fzf files
map {"n", "<C-p>", ":GFiles<CR>"}
map {"n", "<C-f>", ":Files<CR>"}

local set = vim.opt

set.number = true
set.relativenumber = true
set.scrolloff = 8
set.signcolumn = "yes"
set.colorcolumn = "100"
set.cursorline = true

vim.cmd "let g:airline#extensions#tabline#enabled = 1"

-- Colors
set.termguicolors = true
vim.cmd "colorscheme onedark"

vim.g.airline_theme = "onedark"