-- Whether a string starts with a given substring
-- @param String string The string to check
-- @param Start string The substring to check for
-- @return boolean
function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end