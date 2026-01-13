--- Utility function for multiple technologies
--- See atom.util.Technology for functions for a single recipe
atom.util.technology = {
    --- Replaces a prerequisite in all technologies
    --- @param old string The name of the old prerequisite
    --- @param new string The name(s) of the new prerequisite
    replacePrerequisite = function(old, ...)
        local new = table.pack(...)
        for _, tech in pairs(data.raw.technology) do
            if tech.prerequisites then
                for i, prerequisite in pairs(tech.prerequisites) do
                    if prerequisite == old then
                        table.remove(tech.prerequisites, i)
                        for j = 1, new.n do
                            table.insert(tech.prerequisites, new[j])
                        end
                    end
                end
            end
        end
    end,

    --- Locks recipes behind a technology (disables recipe and adds it to tech)
    --- @param techName string The name of the technology
    --- @param recipeNames string|table The recipe name(s) to lock
    lockRecipes = function(techName, recipeNames)
        local tech = atom.util.Technology(techName)
        if not tech then
            return
        end

        if type(recipeNames) == "string" then
            recipeNames = { recipeNames }
        end

        for _, recipeName in pairs(recipeNames) do
            local recipe = data.raw.recipe[recipeName]
            if recipe then
                -- Disable the recipe
                recipe.enabled = false

                -- Remove recipe from all technologies
                for _, t in pairs(data.raw.technology) do
                    if t.effects then
                        for i = #t.effects, 1, -1 do
                            if t.effects[i].type == "unlock-recipe" and t.effects[i].recipe == recipeName then
                                table.remove(t.effects, i)
                            end
                        end
                    end
                end

                -- Add recipe to the specified technology
                tech.addRecipe(recipeName)
            end
        end
    end,

    --- Hides a technology from being visible
    --- @param technologyName string The name of the technology to hide
    hide = function(technologyName)
        local technology = data.raw.technology[technologyName]
        if technology then
            technology.hidden = true
        end
    end
}

--- Utility class for a single technology
--- Pass a technology name or a technology table to get a Technology object
--- @param value string|table The name of the technology or the technology table
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

    local function prerequisiteName(prerequisite)
        if type(prerequisite) == "table" and prerequisite.prototype then
            return prerequisite.prototype.name
        end
        return prerequisite
    end

    return {
        --- The technology data
        prototype = technology,

        --- Applies the technology to the game
        apply = function()
            data:extend({ technology })
        end,

        --- Assigns data to the technology
        --- Shorthand for table.assign(technology.prototype, data)
        --- @param data table The data to assign
        assign = function(data)
            table.assign(technology, data)
        end,

        --- Sets the prerequisite for the technology
        --- @param prerequisites table The names of the prerequisites
        setPrerequisites = function(prerequisites)
            technology.prerequisites = prerequisites
        end,

        --- Adds a prerequisite to the technology
        --- @param prerequisite string|table The name of the prerequisite or table of names
        addPrerequisite = function(prerequisite)
            -- Handle both single string and array
            if type(prerequisite) == "table" and not prerequisite.prototype then
                for _, prereq in pairs(prerequisite) do
                    local _prerequisite = prerequisiteName(prereq)
                    technology.prerequisites = technology.prerequisites or {}
                    if not table.contains(technology.prerequisites, _prerequisite) then
                        table.insert(technology.prerequisites, _prerequisite)
                    end
                end
            else
                local _prerequisite = prerequisiteName(prerequisite)
                technology.prerequisites = technology.prerequisites or {}
                if not table.contains(technology.prerequisites, _prerequisite) then
                    table.insert(technology.prerequisites, _prerequisite)
                end
            end
        end,

        --- Adds multiple prerequisites to the technology
        --- @param prerequisites table The names of the prerequisite
        addPrerequisites = function(prerequisites)
            technology.prerequisites = technology.prerequisites or {}
            for _, prerequisite in pairs(prerequisites) do
                local _prerequisite = prerequisiteName(prerequisite)
                if not table.contains(technology.prerequisites, _prerequisite) then
                    table.insert(technology.prerequisites, _prerequisite)
                end
            end
        end,

        --- Replaces a prerequisite in a technology
        --- @param name string The name of the technology
        --- @param old string The name of the old prerequisite
        --- @param new string The name of the new prerequisite
        replacePrerequisite = function(old, new)
            local _old = prerequisiteName(old)
            local _new = prerequisiteName(new)
            for i, prerequisite in pairs(technology.prerequisites) do
                if prerequisite == _old then
                    technology.prerequisites[i] = _new
                end
            end
        end,

        --- Removes a prerequisite from the technology
        --- @param prerequisite string|table The name of the prerequisite or table of names
        removePrerequisite = function(prerequisite)
            if not technology.prerequisites then
                return
            end

            -- Handle both single string and array
            if type(prerequisite) == "table" and not prerequisite.prototype then
                for _, prereq in pairs(prerequisite) do
                    local _prerequisite = prerequisiteName(prereq)
                    for i = #technology.prerequisites, 1, -1 do
                        if technology.prerequisites[i] == _prerequisite then
                            table.remove(technology.prerequisites, i)
                        end
                    end
                end
            else
                local _prerequisite = prerequisiteName(prerequisite)
                for i, techPrerequisite in pairs(technology.prerequisites) do
                    if techPrerequisite == _prerequisite then
                        table.remove(technology.prerequisites, i)
                        return
                    end
                end
            end
        end,

        --- Adds an ingredient to the technology
        --- @param ingredientName string|table The name of the ingredient or table of ingredient names
        --- @param amount? number The amount of the ingredient (default 1)
        --- @param expensiveAmount? number The amount of the ingredient for the expensive recipe (uses amount if not set)
        addIngredient = function(ingredientName, amount, expensiveAmount)
            if technology.unit then
                -- Handle both single string and array of ingredients
                if type(ingredientName) == "table" then
                    for _, ingredient in pairs(ingredientName) do
                        -- Check if ingredient already exists
                        local found = false
                        for _, existing in pairs(technology.unit.ingredients) do
                            if existing[1] == ingredient then
                                found = true
                                break
                            end
                        end
                        if not found then
                            table.insert(technology.unit.ingredients, { ingredient, 1 })
                        end
                    end
                else
                    table.insert(technology.unit.ingredients, { ingredientName, amount or 1 })
                end
            end
        end,

        --- Removes an existing ingredient by name
        --- @param ingredientName string|table The name of the ingredient or table of ingredient names
        removeIngredient = function(ingredientName)
            if technology.unit then
                -- Handle both single string and array of ingredients
                if type(ingredientName) == "table" then
                    for _, ingredient in pairs(ingredientName) do
                        for i = #technology.unit.ingredients, 1, -1 do
                            if technology.unit.ingredients[i][1] == ingredient then
                                table.remove(technology.unit.ingredients, i)
                            end
                        end
                    end
                else
                    for i, ingredient in pairs(technology.unit.ingredients) do
                        if ingredient[1] == ingredientName then
                            table.remove(technology.unit.ingredients, i)
                            break
                        end
                    end
                end
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

        -- Adds a small version of given icon to the technology. Uses atom.util.icon.createSmallTechIcon.
        -- @param icon IconData The icon to create a small version of
        -- @param position string The position of the small icon. Allowed values: "top-left", "top-right", "bottom-left", "bottom-right". Defaults to "top-left".
        createSmallIcon = function(icon, position)
            local smallIcon = atom.util.icon.createSmallTechIcon(icon, position)
            if (technology.icons) then
                table.insert(technology.icons, smallIcon)
            elseif (technology.icon) then
                technology.icons = {
                    { icon = technology.icon, icon_size = technology.icon_size, icon_mipmaps = technology.icon_mipmaps },
                    smallIcon
                }
            end
        end,

        -- Clones the technology
        -- @param name string The name of the new technology
        -- @param clear? boolean If true, removes all effects and prerequisites from the technology (default false)
        clone = function(name, clear)
            local clone = table.deepcopy(technology)
            clone.name = name
            if (clear) then
                clone.prerequisites = {}
                clone.effects = {}
            end
            return atom.util.Technology(clone)
        end,
    }
end
