return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			post_restore_cmds = { "NvimTreeOpen" },
		})

		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

		vim.keymap.set("n", "<C-s>", require("auto-session.session-lens").search_session, {
			noremap = true,
		})
	end,
}
