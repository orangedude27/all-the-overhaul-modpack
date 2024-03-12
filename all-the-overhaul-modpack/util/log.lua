local function logLevel(level, ...)
    local args = table.pack(...)
    local result = level .. ":"
    for i = 1, args.n do
        result = result .. " " .. (type(args[i]) == "table" and serpent.block(args[i]) or args[i] or "nil")
    end
    log(result)
end

atom.util.log = {
    debug = function(...)
        if atom.debug then
            logLevel("DEBUG", ...)
        end
    end,

    error = function(...)
        logLevel("ERROR", ...)
    end,

    info = function(...)
        logLevel("INFO", ...)
    end
}