return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-y>]],
      size = 20,
      persist_size = true,
      terminal_mappings = true,
      close_on_exit = true,
      direction = "float",
      dir = "git_dir",
      shade_terminals = true,
    })
  end,
}
