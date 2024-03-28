return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 40,
				side = "left",
				adaptive_size = true,
			},
		})
		vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>")
	end,
}
