return {
  {
    "prettier/vim-prettier",
    ft = { "javascript", "typescript", "css", "json", "yaml", "html", "markdown", "vue", "svelte", "lua" }, -- File types you want prettier to format
    run = "yarn install --frozen-lockfile --production",
    config = function()
      vim.g["prettier#autoformat"] = 1
      vim.g["prettier#autoformat_require_pragma"] = 0
    end,
  },
}
