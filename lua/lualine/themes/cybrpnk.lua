local colors = require("cybrpnk.colors")

local darkgray = "#393939"
local lightgray = "#aeaeae"

return {
    normal = {
        a = {fg = colors.white, bg = colors.blue, gui = 'bold'},
        b = {fg = lightgray, bg = darkgray},
        c = {fg = colors.gray, bg = colors.black},
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
        a = {fg = colors.gray, bg = darkgray, gui = 'bold'},
        b = {fg = colors.gray, bg = darkgray},
        c = {fg = colors.gray, bg = darkgray},
    }
}
