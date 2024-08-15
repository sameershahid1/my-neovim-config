local vim = vim


vim.g.mapleader=' '

 --IDE Keys for common task
 vim.keymap.set('n', '<C-]>', ':Explore<CR>')
 vim.keymap.set('n', '<C-s>', ':w<CR>')


 vim.keymap.set('v', '<S-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
 vim.keymap.set('v', '<S-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })



