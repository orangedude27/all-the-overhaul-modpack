local function logLevel(level, value)
    if type(value) == "table" then
        log(level .. ": " .. serpent.block(value))
    else
        log(level .. ": " .. value)
    end
end

atom.util.log = {
    debug = function(value)
        if atom.debug then
            logLevel("DEBUG", value)
        end
    end,

    error = function(value)
        logLevel("ERROR", value)
    end,

    info = function(value)
        logLevel("INFO", value)
    end
}