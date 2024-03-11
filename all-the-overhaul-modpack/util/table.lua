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

-- Assigns all values from source to target
-- @param target table The table to assign to
-- @param source table The table to assign from
function table.assign(target, source)
    for k, v in pairs(source) do
        if type(k) == "number" then
            if (v ~= nil) then
                table.insert(target, v)
            end
        else
            target[k] = v
        end
    end
end