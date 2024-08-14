package.path = package.path .. ';/home/sameer/.config/nvim/lua/?.lua;/home/sameer/.config/nvim/lua/?/init.lua'

require("after.plugin.telescope")
require("after.plugin.treesitter")
require("after.plugin.fugitive")
require("after.plugin.harpoon")
require("after.plugin.colors")
require("after.plugin.webicons")
require("after.plugin.whichkey")
require("after.plugin.lsp")
require("sameer.remap")
require("sameer.packer")
require("sameer.set")



