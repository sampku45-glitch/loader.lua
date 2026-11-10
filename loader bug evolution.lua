local function decode(t)
    local s = ""
    for i = 1, #t do
        s = s .. string.char(t[i])
    end
    return s
end

local url = decode({
    104,116,116,112,115,58,47,47,
    114,97,119,46,103,105,116,104,
    117,98,117,115,101,114,99,111,
    110,116,101,110,116,46,99,111,
    109,47,122,97,108,117,108,105,
    104,114,105,101,116,97,47,98,
    117,103,45,101,118,111,108,117,
    116,105,111,110,47,109,97,105,
    110,47,109,97,105,110,46,108,
    117,97
})

local success, err = pcall(function()
    local source = game:HttpGet(url .. "?v=" .. os.time())
    assert(source and #source > 0, "Source unavailable")

    local execute = loadstring(source)
    assert(execute, "Compilation failed")

    execute()
end)

if not success then
    warn("[Bug Evolution] " .. tostring(err))
end