-- Utility function for multiple technologies
-- See atom.util.Technology for functions for a single recipe
atom.util.technology = {
    -- Replaces a prerequisite in all technologies
    -- @param old string The name of the old prerequisite
    -- @param new string The name(s) of the new prerequisite
    replacePrerequisite = function(old, ...)
        local new = table.pack(...)
        for _, tech in pairs(data.raw.technology) do
            if tech.prerequisites then
                for i, prerequisite in pairs(tech.prerequisites) do
                    if prerequisite == old then
                        tech.prerequisites[i] = nil
                        for j = 1, new.n do
                            table.insert(tech.prerequisites, new[j])
                        end
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

        -- Sets the prerequisite for the technology
        -- @param prerequisites table The names of the prerequisites
        setPrerequisites = function(prerequisites)
            technology.prerequisites = prerequisites
        end,

        -- Adds a prerequisite to the technology
        -- @param prerequisite string The name of the prerequisite
        addPrerequisite = function(prerequisite)
            if (not table.contains(technology.prerequisites, prerequisite)) then
                table.insert(technology.prerequisites, prerequisite)
            end
        end,

        -- Adds multiple prerequisites to the technology
        -- @param prerequisites table The names of the prerequisite
        addPrerequisites = function(prerequisites)
            for _, prerequisite in pairs(prerequisites) do
                if (not table.contains(technology.prerequisites, prerequisite)) then
                    table.insert(technology.prerequisites, prerequisite)
                end
            end
        end,

        -- Replaces a prerequisite in a technology
        -- @param name string The name of the technology
        -- @param old string The name of the old prerequisite
        -- @param new string The name of the new prerequisite
        replacePrerequisite = function(old, new)
            for i, prerequisite in pairs(technology.prerequisites) do
                if prerequisite == old then
                    technology.prerequisites[i] = new
                end
            end
        end,

        -- Removes a prerequisite from the technology
        -- @param prerequisite string The name of the prerequisite
        removePrerequisite = function(prerequisite)
            local _prerequisite = prerequisite
            if (type(prerequisite) == "table" and prerequisite.prototype) then
                _prerequisite = prerequisite.prototype.name
            end
            for i, techPrerequisite in pairs(technology.prerequisites) do
                if techPrerequisite == _prerequisite then
                    table.remove(technology.prerequisites, i)
                    return
                end
            end
        end,

        -- Adds an ingredient to the technology
        -- @param ingredientName string The name of the ingredient
        -- @param amount? number The amount of the ingredient (default 1)
        -- @param expensiveAmount? number The amount of the ingredient for the expensive recipe (uses amount if not set)
        addIngredient = function(ingredientName, amount, expensiveAmount)
            local function apply(_table, amount)
                table.insert(_table.unit.ingredients, { ingredientName, amount })
            end
            if technology.unit then
                apply(technology, amount or 1)
            end
            if technology.normal then
                apply(technology.normal, amount or 1)
            end
            if technology.expensive then
                apply(technology.expensive, expensiveAmount or amount or 1)
            end
        end,

        -- Removes an existing ingredient by name
        -- @param ingredientName string The name of the ingredient
        removeIngredient = function(ingredientName)
            local function apply(_table)
                for i, result in pairs(_table.unit.ingredients) do
                    if result.name == ingredientName then
                        _table.unit.ingredients[i] = nil
                    elseif result[1] == ingredientName then
                        _table.unit.ingredients[i] = nil
                    end
                end
            end
            if technology.unit then
                apply(technology)
            end
            if technology.normal then
                apply(technology.normal)
            end
            if technology.expensive then
                apply(technology.expensive)
            end
        end,

        -- Adds a recipe unlock to the technology
        -- @param recipeName string The name of the recipe to unlock
        addRecipe = function(recipeName)
            table.insert(technology.effects, { type = "unlock-recipe", recipe = recipeName })
        end,

        -- Removes a recipe unlock from the technology
        -- @param recipeName string The name of the recipe to remove
        removeRecipe = function(recipeName)
            for i, effect in pairs(technology.effects) do
                if effect.type == "unlock-recipe" and effect.recipe == recipeName then
                    table.remove(technology.effects, i)
                    return
                end
            end
        end,
    }
end
