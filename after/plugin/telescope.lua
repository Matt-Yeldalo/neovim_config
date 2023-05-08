local builtin = require('telescope.builtin')
-- Normal files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Search using Grep string
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > " ) });
end)
