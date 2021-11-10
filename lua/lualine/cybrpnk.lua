require("cybrpnk/colors")

local darkGrey = "#393939"
local lightGrey = "#aeaeae"

return {
  inactive = {
    a = { fg = darkGrey, bg = lightGrey, gui = 'bold' },
    b = { fg = colors.grey, bg = colors.white },
    c = { fg = darkGrey, bg = colors.lightGrey },
  },
  normal = {
    a = { fg = colors.lightGrey, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.darkGrey, bg = colors.lightGrey },
    c = { fg = colors.grey, bg = colors.lightGrey },
  },
  command = {
    a = { fg = colors.lightGrey, bg = colors.green, gui = 'bold' },
    b = { fg = colors.darkGrey, bg = colors.lightGrey },
    c = { fg = colors.grey, bg = colors.lightGrey },
  },
  visual = {
    a = { fg = colors.lightGrey, bg = colors.orange, gui = 'bold' },
    b = { fg = colors.darkGrey, bg = colors.lightGrey },
    c = { fg = colors.grey, bg = colors.lightGrey },
  },
  replace = {
    a = { fg = colors.lightGrey, bg = colors.red, gui = 'bold' },
    b = { fg = colors.darkGrey, bg = colors.lightGrey },
    c = { fg = colors.grey, bg = colors.lightGrey },
  },
  insert = {
    a = { fg = colors.lightGrey, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.darkGrey, bg = colors.lightGrey },
    c = { fg = colors.grey, bg = colors.lightGrey },
  },
}
