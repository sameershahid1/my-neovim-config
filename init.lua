package.path = package.path .. ';/home/sameer/.config/nvim/lua/?.lua;/home/sameer/.config/nvim/lua/?/init.lua'

--Setting section
require("sameer.remap")
require("sameer.packer")
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


print("Hello Sameer")
