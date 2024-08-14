local vim = vim
 
 --IDE Keys for common task
 vim.keymap.set('n', '<C-]>', ':Explore<CR>')
 vim.keymap.set('n', '<C-s>', ':w<CR>')


 vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
 vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })


 vim.keymap.set('n', '<S-Down>', 'GVG')
 vim.keymap.set('n', '<S-Up>', 'ggVG')

