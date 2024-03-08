local productivityModules = {}
for _, module in pairs(data.raw["module"]) do
    if string.find(module.name, "productivity", 1, true) then
        table.insert(productivityModules, module)
    end
end

atom.util.recipe = {
    -- Allows productivity modules to be used for a recipe
    -- @param recipeName string The name of the recipe
    allowProductivity = function(recipeName)
        for _, module in pairs(productivityModules) do
            if (module.limitation) then
                table.insert(module.limitation, recipeName)
            end
        end
    end,

    -- Adds a recipe to a technology
    -- @param recipeName string The name of the recipe
    -- @param technology string The name of the technology
    unlockedByTechnology = function(recipeName, technologyName)
        if not technologyName then
            return
        end
        for _, effect in pairs(data.raw.technology[technologyName].effects) do
            if effect.type == "unlock-recipe" and effect.recipe == recipeName then
                return
            end
        end
        table.insert(data.raw.technology[technologyName].effects, { type = "unlock-recipe", recipe = recipeName })
    end,

    -- Removes a recipe by name together with all its dependencies
    -- @param name string The name of the recipe
    removeByName = function(name)
        data.raw.recipe[name] = nil

        for _, module in pairs(data.raw.module) do
            if (module.limitation) then
                for key, value in pairs(module.limitation) do
                    if value == name then
                        module.limitation[key] = nil
                    end
                end
            end
        end
        for _, technology in pairs(data.raw.technology) do
            if (technology.effects) then
                for i, value in pairs(technology.effects) do
                    if value.recipe == name then
                        technology.effects[i] = nil
                    end
                end
            end
        end
    end,

    -- Removes all recipes that match a pattern together with all their dependencies
    -- @param pattern string The pattern to match (see https://www.lua.org/manual/5.2/manual.html#6.4.1)
    -- @param exceptions? table A list of recipes to keep
    removeByNamePattern = function(pattern, exceptions)
        exceptions = exceptions or {}
        for key, _ in pairs(data.raw.recipe) do
            if string.find(key, pattern) ~= nil and not table.contains(exceptions, key) then
                data.raw.recipe[key] = nil
            end
        end
        for _, module in pairs(data.raw.module) do
            if (module.limitation) then
                for key, value in pairs(module.limitation) do
                    if string.find(value, pattern) ~= nil and not table.contains(exceptions, value) then
                        module.limitation[key] = nil
                    end
                end
            end
        end
        for _, technology in pairs(data.raw.technology) do
            if (technology.effects) then
                for i, value in pairs(technology.effects) do
                    if value.recipe and string.find(value.recipe, pattern) ~= nil and not table.contains(exceptions, value.recipe) then
                        technology.effects[i] = nil
                    end
                end
            end
        end
    end
}