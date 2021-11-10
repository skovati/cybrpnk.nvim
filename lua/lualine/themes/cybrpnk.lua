require("cybrpnk/colors")

local darkgrey = "#393939"
local lightgrey = "#aeaeae"

return {
  normal = {
    a = {bg = colors.grey, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgrey, fg = colors.white},
    c = {bg = colors.darkgrey, fg = colors.grey}
  },
  insert = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgrey, fg = colors.white},
    c = {bg = colors.lightgrey, fg = colors.white}
  },
  visual = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgrey, fg = colors.white},
    c = {bg = colors.lightgrey, fg = colors.black}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgrey, fg = colors.white},
    c = {bg = colors.black, fg = colors.white}
  },
  command = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgrey, fg = colors.white},
    c = {bg = colors.lightgrey, fg = colors.black}
  },
  inactive = {
    a = {bg = colors.darkgrey, fg = colors.grey, gui = 'bold'},
    b = {bg = colors.darkgrey, fg = colors.grey},
    c = {bg = colors.darkgrey, fg = colors.grey}
  }
}
