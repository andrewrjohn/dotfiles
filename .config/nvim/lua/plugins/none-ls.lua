return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					filetypes = {
						"json",
						"yaml",
						"html",
						"css",
						"scss",
						"markdown",
						"typescript",
						"typescriptreact",
						"javascript",
						"javascriptreact",
						"jsx",
						"tsx",
					},
				}),
			},

			on_attach = function(client, buffer)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
						buffer = buffer,
						callback = function()
							vim.lsp.buf.format({ buffer = buffer })
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
