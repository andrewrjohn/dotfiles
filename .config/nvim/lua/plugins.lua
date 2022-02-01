local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

Plug "tpope/vim-sensible"
Plug "sheerun/vim-polyglot"
Plug "junegunn/fzf.vim"
Plug("junegunn/fzf", { ["do"] = vim.fn["fzf#install"] })
Plug "tmhedberg/SimpylFold"
Plug("ycm-core/YouCompleteMe", { ["do"] = "./install.py" })
Plug "tpope/vim-fugitive"
Plug "preservim/nerdtree"
Plug "kshenoy/vim-signature"
Plug "joshdick/onedark.vim"
Plug("prettier/vim-prettier", { ["do"] = "yarn install --frozen-lockfile --production" })
Plug "dense-analysis/ale"
Plug "rust-lang/rust.vim"
Plug "tpope/vim-commentary"
Plug "vim-airline/vim-airline"
Plug "akinsho/toggleterm.nvim"
Plug "vim-airline/vim-airline-themes"
Plug "tpope/vim-surround"

vim.call("plug#end")
