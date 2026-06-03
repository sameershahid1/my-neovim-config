--package.path = package.path .. ';/home/mk47/.config/nvim/lua/?.lua;/home/mk47/.config/nvim/lua/?/init.lua'

--Setting section
require("sameer.remap")
--require("sameer.packer")
require("sameer.lazy")
require("sameer.set")

--After Plugin
require("after.plugin.telescope")
require("after.plugin.treesitter")
require("after.plugin.fugitive")
require("after.plugin.harpoon")
require("after.plugin.colors")
require("after.plugin.webicons")
require("after.plugin.whichkey")
require("after.plugin.snippit")
require("after.plugin.lualine")
require("after.plugin.kuber")
require("after.plugin.gh")
require("after.plugin.lsp")
require("after.plugin.indent")


print("Hello Sameer")
