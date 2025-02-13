return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope.builtin')

    local keymap = vim.keymap
    keymap.set("n", "<leader>pf", telescope.find_files, { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>pr", telescope.oldfiles, { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>ps", telescope.live_grep, { desc = "Find string in cwd" })
    keymap.set("n", "<leader>pc", telescope.grep_string, { desc = "Find string under cursor in cwd" })
  end,
}
