return {
	"tpope/vim-commentary",
	config = function()
		vim.g["context#commentstring#table"] = {
			["javascript.jsx"] = {
				jsComment = "// %s",
				jsImport = "// %s",
				jsxStatement = "// %s",
				jsxRegion = "{/*%s*/}",
			},
			["javascriptreact"] = {
				jsComment = "// %s",
				jsImport = "// %s",
				jsxStatement = "// %s",
				jsxRegion = "{/*%s*/}",
			},
			["typescript.tsx"] = {
				tsComment = "// %s",
				tsImport = "// %s",
				tsxStatement = "// %s",
				tsxRegion = "{/*%s*/}",
			},
			["typescriptreact"] = {
				tsComment = "// %s",
				tsImport = "// %s",
				tsxStatement = "// %s",
				tsxRegion = "{/*%s*/}",
			},
		}
	end,
}
