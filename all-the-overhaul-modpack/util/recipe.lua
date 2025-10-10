local productivityModules = {}
for _, module in pairs(data.raw["module"]) do
    if string.find(module.name, "productivity", 1, true) then
        table.insert(productivityModules, module)
    end
end

--- Utility function for multiple recipes
--- See atom.util.Recipe for functions for a single recipe
atom.util.recipe = {
    --- Removes a recipe by name together with all its dependencies
    --- @param name string The name of the recipe
    removeByName = function(name)
        data.raw.recipe[name] = nil

        for _, technology in pairs(data.raw.technology) do
            if (technology.effects) then
                for i, value in pairs(technology.effects) do
                    if value.recipe == name then
                        table.remove(technology.effects, i)
                    end
                end
            end
        end
    end,

    --- Removes all recipes that match a pattern together with all their dependencies
    --- @param pattern string The pattern to match (see https://www.lua.org/manual/5.2/manual.html#6.4.1)
    --- @param exceptions? table A list of recipes to keep
    removeByNamePattern = function(pattern, exceptions)
        exceptions = exceptions or {}
        for key, _ in pairs(data.raw.recipe) do
            if string.find(key, pattern) ~= nil and not table.contains(exceptions, key) then
                data.raw.recipe[key] = nil
            end
        end
        for _, technology in pairs(data.raw.technology) do
            if (technology.effects) then
                for i, value in pairs(technology.effects) do
                    if value.recipe and string.find(value.recipe, pattern) ~= nil and not table.contains(exceptions, value.recipe) then
                        table.remove(technology.effects, i)
                    end
                end
            end
        end
    end,

    --- Finds recipes by an item being used either as an ingredient or a result
    --- @param itemName string The name of the item
    --- @return table A list of recipe names
    findByItem = function(itemName)
        local function containsItem(table)
            for _, ingredient in pairs(table) do
                if ingredient.name == itemName then
                    return true
                end
            end
            return false
        end
        local result = {}
        for _, recipe in pairs(data.raw.recipe) do
            if recipe.results and containsItem(recipe.results)
                or recipe.ingredients and containsItem(recipe.ingredients)
            then
                table.insert(result, recipe.name)
            end
        end
        return result
    end,

    --- Removes recipes by an item being used either as an ingredient or a result
    --- @param itemName string The name of the item
    removeByItem = function(itemName)
        atom.util.log.debug("Removing recipes using item " .. itemName)
        local recipes = atom.util.recipe.findByItem(itemName)
        for _, recipe in pairs(recipes) do
            atom.util.log.debug("  " .. recipe)
            atom.util.recipe.removeByName(recipe)
        end
    end,

    --- Replaces an existing ingredient by name with a new ingredient on all recipes
    --- @param old string The name of the existing ingredient
    --- @param new string The name of the new ingredient
    --- @param amount? number The amount of the new ingredient (keeps the old value if not set)
    replaceIngredient = function(old, new, amount)
        for _, recipe in pairs(data.raw.recipe) do
            atom.util.Recipe(recipe).replaceIngredient(old, new, amount)
        end
    end,

    --- Replaces an existing result by name with a new result on all recipes
    --- @param old string The name of the existing result
    --- @param new string The name of the new result
    --- @param amount? number The amount of the new result (keeps the old value if not set)
    replaceResult = function(old, new, amount)
        for _, recipe in pairs(data.raw.recipe) do
            atom.util.Recipe(recipe).replaceResult(old, new, amount)
        end
    end
}

--- Utility class for a single recipe
--- Pass a recipe name or a recipe table to get a Recipe object
--- @param value string|table The name of the recipe or the recipe table
function atom.util.Recipe(value)
    local recipeName -- Don't use this in functions as the actual name might change
    local recipe

    if type(value) == "string" then
        recipeName = value
        recipe = data.raw.recipe[recipeName]
    elseif type(value) == "table" then
        recipeName = value.name
        recipe = value
    end

    if not recipe then
        atom.util.log.debug("Recipe not found: " .. recipeName)
        return nil
    end

    return {
        --- The recipe data
        prototype = recipe,

        --- Applies the recipe to the game
        apply = function()
            data:extend({ recipe })
        end,

        --- Assigns data to the recipe
        --- Shorthand for table.assign(recipe.prototype, data)
        --- @param data table The data to assign
        assign = function(data)
            table.assign(recipe, data)
        end,

        --- Adds an ingredient to the recipe
        --- @param ingredientName string The name of the ingredient
        --- @param amount number The amount of the ingredient
        addIngredient = function(ingredientName, amount)
            local ingredientType = data.raw.item[ingredientName] and "item"
                    or data.raw.module[ingredientName] and "item"
                    or data.raw.fluid[ingredientName] and "fluid"
                    or nil
            if not ingredientType then
                atom.util.log.error("Unknown ingredient: " .. ingredientName)
                return
            end
            local function apply(ingredients, amount)
                table.insert(ingredients, { name = ingredientName, amount = amount, type = ingredientType })
            end
            if recipe.ingredients then
                apply(recipe.ingredients, amount)
            end
        end,

        --- Replaces an existing ingredient by name with a new ingredient or adjusts the amount
        --- @param old string The name of the existing ingredient
        --- @param new? string The name of the new ingredient
        -- @param amount? number The amount of the new ingredient
        replaceIngredient = function(old, new, amount)
            if type(new) == "number" then
                amount = new
                new = old
            end
            local function apply(_table, amount)
                for _, result in pairs(_table.ingredients) do
                    if result.name == old then
                        result.name = new
                        result.amount = amount or result.amount
                    end
                end
            end
            if recipe.ingredients then
                apply(recipe, amount)
            end
        end,

        -- Removes an existing ingredient by name
        -- @param ingredientName string The name of the ingredient
        removeIngredient = function(ingredientName)
            local function apply(_table)
                for i, result in pairs(_table.ingredients) do
                    if result.name == ingredientName then
                        table.remove(_table.ingredients, i)
                    end
                end
            end
            if recipe.ingredients then
                apply(recipe)
            end
        end,

        -- Replaces an existing result by name with a new result
        -- @param old string The name of the existing result
        -- @param new? string The name of the new result
        -- @param amount? number The amount of the new result (keeps the old value if not set)
        replaceResult = function(old, new, amount)
            if type(new) == "number" then
                amount = new
                new = old
            end
            local function table(table, amount)
                for _, result in pairs(table.results) do
                    if result.name == old then
                        result.name = new
                        result.amount = amount or result.amount
                    end
                end
                if table.main_product == old then
                    table.main_product = new
                end
            end
            if recipe.results then
                table(recipe, amount)
            end
        end,

        -- Allows productivity modules to be used for a recipe
        -- @param recipeName string The name of the recipe
        allowProductivity = function()
            recipe.allow_productivity = true
        end,

        -- Adds the recipe to a technology
        -- @param technology string|table The name of the technology or the technology table
        unlockedByTechnology = function(technology)
            if not technology then
                return
            end
            technology = type(technology) == "table" and technology or data.raw.technology[technology]
            if (not technology.effects) then
                technology.effects = {}
            end
            for _, effect in pairs(technology.effects) do
                if effect.type == "unlock-recipe" and effect.recipe == recipe.name then
                    return
                end
            end
            table.insert(technology.effects, { type = "unlock-recipe", recipe = recipe.name })
        end,

        -- Adds an icon to the recipe, replacing any existing icons.
        -- @param icon IconData The icon to add
        setIcon = function(icon)
            recipe.icons = { icon }
        end,

        -- Adds a small version of given icon to the recipe. Uses atom.util.icon.createSmallIcon.
        -- @param icon IconData The icon to create a small version of
        -- @param position string The position of the small icon. Allowed values: "top-left", "top-right", "bottom-left", "bottom-right". Defaults to "top-left".
        addSmallIcon = function(icon, position)
            local smallIcon = atom.util.icon.createSmallIcon(icon, position)
            local function addIcon(_table)
                if (_table.icons) then
                    table.insert(_table.icons, smallIcon)
                elseif (_table.icon) then
                    _table.icons = {
                        { icon = _table.icon, icon_size = _table.icon_size, icon_mipmaps = _table.icon_mipmaps },
                        smallIcon
                    }
                end
            end
            addIcon(recipe)
        end,

        clone = function(name)
            local clone = table.deepcopy(recipe)
            clone.name = name
            return atom.util.Recipe(clone)
        end
    }
end