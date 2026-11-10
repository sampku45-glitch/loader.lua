local _0x1 = "https://raw.githubusercontent.com/zalulihrieta/bug-evolution/main/main.lua"

local _0x2 = game
local _0x3 = _0x2.HttpGet
local _0x4 = loadstring

local _0x5, _0x6 = pcall(function()
    local _0x7 = _0x3(_0x2, _0x1 .. "?v=" .. os.time())
    assert(_0x7 and #_0x7 > 0, "Main script is empty")

    local _0x8 = _0x4(_0x7)
    assert(_0x8, "Compilation failed")

    _0x8()
end)

if not _0x5 then
    warn("[Bug Evolution] " .. tostring(_0x6))
end