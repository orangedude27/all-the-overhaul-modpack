-- Checks if a table contains a certain value
-- @param table table The table to check
-- @param value any The value to check for
-- @return boolean
function table.contains(table, value)
    for _, v in pairs(table) do
        if v == value then
            return true
        end
    end
    return false
end