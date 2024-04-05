-- Utility function for multiple technologies
-- See atom.util.Technology for functions for a single recipe
atom.util.technology = {
    -- Replaces a prerequisite in all technologies
    -- @param old string The name of the old prerequisite
    -- @param new string The name of the new prerequisite
    replacePrerequisite = function(old, new)
        for _, tech in pairs(data.raw.technology) do
            if tech.prerequisites then
                for i, prerequisite in pairs(tech.prerequisites) do
                    if prerequisite == old then
                        tech.prerequisites[i] = new
                    end
                end
            end
        end
    end
}

-- Utility class for a single technology
-- Pass a technology name or a technology table to get a Technology object
-- @param value string|table The name of the technology or the technology table
function atom.util.Technology(value)
    local technologyName -- Don't use this in functions as the actual name might change
    local technology

    if type(value) == "string" then
        technologyName = value
        technology = data.raw.technology[technologyName]
    elseif type(value) == "table" then
        technologyName = value.name
        technology = value
    end

    if not technology then
        atom.util.log.debug("Technology not found: " .. technologyName)
        return nil
    end

    return {
        -- The technology data
        prototype = technology,

        -- Applies the technology to the game
        apply = function()
            data:extend({ technology })
        end,

        -- Assigns data to the technology
        -- Shorthand for table.assign(technology.prototype, data)
        -- @param data table The data to assign
        assign = function(data)
            table.assign(technology, data)
        end,

        -- Replaces a prerequisite in a technology
        -- @param name string The name of the technology
        -- @param old string The name of the old prerequisite
        -- @param new string The name of the new prerequisite
        replacePrerequisite = function(old, new)
            for i, prerequisite in pairs(tech.prerequisites) do
                if prerequisite == old then
                    tech.prerequisites[i] = new
                end
            end
        end,

        removePrerequisite = function(prerequisite)
            for i, techPrerequisite in pairs(technology.prerequisites) do
                if techPrerequisite == prerequisite then
                    table.remove(technology.prerequisites, i)
                    return
                end
            end
        end,
    }
end
