local colors = require("cybrpnk.colors")

local darkgrey = "#393939"
local lightgrey = "#aeaeae"

return {
    normal = {
        a = {fg = colors.white, bg = colors.blue, gui = 'bold'},
        b = {fg = lightgrey, bg = colors.darkgrey},
        c = {fg = grey, bg = colors.black},
    },
    insert = {
        a = {fg = colors.white, bg = colors.red, gui = 'bold'},
    },
    visual = {
        a = {fg = colors.white, bg = colors.cyan, gui = 'bold'},
    },
    replace = {
        a = {fg = colors.white, bg = colors.magenta, gui = 'bold'},
    },
    command = {
        a = {fg = colors.white, bg = colors.green, gui = 'bold'},
    },
    inactive = {
        a = {fg = colors.grey, bg = darkgrey, gui = 'bold'},
        b = {fg = colors.grey, bg = darkgrey},
        c = {fg = colors.grey, bg = darkgrey},
    }
}
