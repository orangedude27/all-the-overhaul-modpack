---Whether a string starts with a given substring
---@param String string The string to check
---@param Start string The substring to check for
---@return boolean
function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

---Replaces a value with another value
---@param value string The value where the searchString is replaced
---@param searchString string String that is replaced
---@param replacement string New value for searchString
function string.replace(value, searchString, replacement)
    searchString = string.gsub(searchString, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
    replacement = string.gsub(replacement, "[%%]", "%%%%")                       -- escape replacement
    return string.gsub(value, searchString, replacement)
end