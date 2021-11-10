package.loaded['cybrpnk.colors'] = nil
local colors = require "cybrpnk.colors"

local darkgray = "#393939"
local lightgray = "#aeaeae"

return {
    normal = {
        a = {fg = colors.white.hex, bg = colors.blue.hex, gui = "bold"},
        b = {fg = lightgray, bg = darkgray},
        c = {fg = lightgray, bg = colors.black.hex},
    },
    insert = {
        a = {fg = colors.white.hex, bg = colors.red.hex, gui = "bold"},
    },
    visual = {
        a = {fg = colors.white.hex, bg = colors.cyan.hex, gui = "bold"},
    },
    replace = {
        a = {fg = colors.white.hex, bg = colors.magenta.hex, gui = "bold"},
    },
    command = {
        a = {fg = colors.white.hex, bg = colors.green.hex, gui = "bold"},
    },
    inactive = {
        a = {fg = colors.gray.hex, bg = darkgray, gui = "bold"},
        b = {fg = colors.gray.hex, bg = darkgray},
        c = {fg = colors.gray.hex, bg = darkgray},
    }
}
