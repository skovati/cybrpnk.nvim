#!/usr/bin/env lua

local colors = {
    "171717",  -- black
    "ba423f",  -- red
    "94983a",  -- green
    "d7b44a",  -- yellow
    "658fa0",  -- blue
    "b080a4",  -- magenta
    "76ab97",  -- cyan
    "cb7437",  -- orange
    "6e6e6e",  -- gray
    "e8e4d9",  -- white
}

-- print hex codes
io.write("\27[m  ")
for k, v in pairs(colors) do
    r = tonumber(v:sub(1, 2), 16)
    g = tonumber(v:sub(3, 4), 16)
    b = tonumber(v:sub(5, 7), 16)
    if k == 1 then
        io.write("#"..v)
    else
        io.write(string.format("\27[38;2;%d;%d;%dm#%s", r, g, b, v))
    end
    io.write("\27[m  ")
end
io.write("\n")

-- print
for cols = 1,5 do
    io.write("\27[m  ")
    for k, v in pairs(colors) do
        r = tonumber(v:sub(1, 2), 16)
        g = tonumber(v:sub(3, 4), 16)
        b = tonumber(v:sub(5, 7), 16)
        for i = 1,7 do
            io.write(string.format("\27[48;2;%d;%d;%dm ", r, g, b))
        end
        io.write("\27[m  ")
    end
    io.write("\n")
end

io.write("\n")
