local mark=require("harpoon.mark")
local ui=require("harpoon.ui")

vim.keymap.set("n","<C-a>",mark.add_file)
vim.keymap.set("n","<C-e>",ui.toggle_quick_menu)


--vim.keymap.set("n","<C-z>", function() ui.nav_file(1) end)
--vim.keymap.set("n","<C-x>", function() ui.nav_file(2) end)
--vim.keymap.set("n","<C-c>", function() ui.nav_file(3) end)
--vim.keymap.set("n","<C-v>", function() ui.nav_file(4) end)


vim.keymap.set("n","<C-q>", function() ui.nav_prev() end)
vim.keymap.set("n","<C-d>", function() ui.nav_next() end)
