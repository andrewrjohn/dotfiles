return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")

      local function search_and_replace()
        local input = require("telescope.themes").get_dropdown({
          prompt_title = "Search and Replace",
          results_title = "Replace with:",
          find_command = { "rg", "--files" },
          attach_mappings = function(_, map)
            map("i", "<CR>", function(prompt_bufnr)
              local search = require("telescope.actions.state").get_current_line()
              require("telescope.actions").close(prompt_bufnr)
              local replace = vim.fn.input("Replace with: ")
              vim.cmd(
                string.format("cfdo %s/\\V%s/%s/g | update", search, vim.escape(search, "/"), replace)
              )
            end)
            return true
          end,
        })
        require("telescope.builtin").live_grep(input)
      end

      vim.keymap.set("n", "<leader>fr", search_and_replace, { noremap = true })

      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
      vim.keymap.set("n", "<C-f>", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      require("telescope").load_extension("ui-select")
    end,
  },
}
