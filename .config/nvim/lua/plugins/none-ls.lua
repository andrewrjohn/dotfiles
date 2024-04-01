return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
      },
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        vim.lsp.buf.format({ async = true })
      end,
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
