local builtin = require('telescope.builtin')

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-h>', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<C-l>', builtin.help_tags, {})


require("telescope").setup({
    defaults = {
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        winblend = 0, -- fully opaque content (you can set to 10–30 for fade)
    }
})
