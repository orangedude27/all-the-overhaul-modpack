local data_util = {}
local debug = false
data_util.mod_name = "all-the-overhaul-modpack"
data_util.mod_path = "__" .. data_util.mod_name .. "__"

---Removes recipie unlocks from a specifice tech
---@param tech_effects effects #Tech to remove from
---@param recipe_name string #Recipe to remove
function data_util.remove_recipe_from_effects(tech_effects, recipe_name)
    local index = 0
    for _, _item in ipairs(tech_effects) do
        if _item.type == "unlock-recipe" and _item.recipe == recipe_name then
            index = _
            break
        end
    end
    if index > 0 then
        table.remove(tech_effects, index)
    end
end

---Checks to see if table contains value
---@param table table #Table to check
---@param check any #What to check for
function data_util.table_contains(table, check)
    for k, v in pairs(table) do
        if v == check then
            return true
        end
    end
    return false
end

---Checks to see if table contains value
---@param table table #Table to check
---@param check any #What to check for
function data_util.subgroup_table_contains_name(table, check)
    for k, v in pairs(table) do
        if v.name == check then
            return true
        end
    end
    return false
end

---Check s for pattern considering all charectors to be plain
---@param s string
---@param pattern string
---@return boolean
function data_util.find_string_plain(s, pattern)
    if string.find(string.lower(s), string.lower(pattern), 1, true) then
        return true
    end
    return false
end

---Prints to log if toggle is on
---@param message string
function data_util.debuglog(message)
    if debug then
        log(message)
    end
end

---Not sure what this does
function data_util.conditional_modify(prototype)
    if data.raw[prototype.type] and data.raw[prototype.type][prototype.name] then
        local raw = data.raw[prototype.type][prototype.name]

        for key, property in pairs(prototype) do
            if key == "ingredients" then
                raw.ingredients = table.deepcopy(property)
            elseif key == "results" then
                raw.results = table.deepcopy(property)
            else
                raw[key] = property
            end
        end
    end
end

---Use replace_or_add_ingredient instead of this
function data_util.replace_or_add_ingredient_sub(recipe, old, new, amount, is_fluid)
    -- old can be nil to just add
    local found = false
    if old then
        for i, component in pairs(recipe.ingredients) do
            for _, value in pairs(component) do
                if value == old then
                    found = true
                    recipe.ingredients[i] = { type = is_fluid and "fluid" or "item", name = new, amount = amount }
                    break
                end
            end
        end
    end
    if not found then
        table.insert(recipe.ingredients, { type = is_fluid and "fluid" or "item", name = new, amount = amount })
    end
end

---Adds or removes ingredients from a recipe
---@param recipe string #Name of recipe
---@param old any #What to remove (can be blank if only adding)
---@param new string #What to add
---@param amount int #How many to add
---@param is_fluid boolean #Is it a fluid?
function data_util.replace_or_add_ingredient(recipe, old, new, amount, is_fluid)
    if type(recipe) == "string" then
        recipe = data.raw.recipe[recipe]
    end
    if not recipe then
        return
    end
    if recipe.ingredients then
        data_util.replace_or_add_ingredient_sub(recipe, old, new, amount, is_fluid)
    end
end

---Makes recipe hidden
---@param recipe_name string #Name of recipe
function data_util.disable_recipe(recipe_name)
    data_util.conditional_modify({
        type = "recipe",
        name = recipe_name,
        enabled = false,
    })
end

---Makes recipe unlockable by specific tech (removes recipe from other tech)
---@param recipe_name string #Name of recipe
---@param tech_name string #Name of tech
function data_util.recipe_require_tech(recipe_name, tech_name)
    if data.raw.recipe[recipe_name] and data.raw.technology[tech_name] then
        data_util.disable_recipe(recipe_name)
        for _, tech in pairs(data.raw.technology) do
            if tech.effects then
                data_util.remove_recipe_from_effects(tech.effects, recipe_name)
            end
        end
        local already = false
        data.raw.technology[tech_name].effects = data.raw.technology[tech_name].effects or {}
        for _, effect in pairs(data.raw.technology[tech_name].effects) do
            if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
                already = true
                break
            end
        end
        if not already then
            table.insert(data.raw.technology[tech_name].effects, { type = "unlock-recipe", recipe = recipe_name })
        end
    end
end

---Makes recipe unlockable by specific tech (deos not remove recipe from other tech)
---@param recipe_name string #Name of recipe
---@param tech_name string #Name of tech
function data_util.tech_lock_recipes(tech_name, recipe_names)
    if not data.raw.technology[tech_name] then
        return
    end
    if type(recipe_names) == "string" then
        recipe_names = { recipe_names }
    end
    for _, recipe_name in pairs(recipe_names) do
        if data.raw.recipe[recipe_name] then
            data_util.recipe_require_tech(recipe_name, tech_name)
        end
    end
end

---Addes tech to be required by other tech
---@param tech_name string #Tech to be added to
---@param require_names any #Prerequisits to add (can be single string or table of strings)
function data_util.tech_add_prerequisites(tech_name, require_names)
    if not data.raw.technology[tech_name] then
        return
    end
    if type(require_names) == "string" then
        require_names = { require_names }
    end
    for _, require_name in pairs(require_names) do
        if data.raw.technology[require_name] then
            data.raw.technology[tech_name].prerequisites = data.raw.technology[tech_name].prerequisites or {}
            local already = false
            for _, prerequisite in pairs(data.raw.technology[tech_name].prerequisites) do
                if prerequisite == require_name then
                    already = true
                    break
                end
            end
            if not already then
                table.insert(data.raw.technology[tech_name].prerequisites, require_name)
            end
        end
    end
end

---Removes tech to be required by other tech
---@param prototype_name string #Name of tech to remove other tech from
---@param prerequisites table #Name of techs to remove
function data_util.tech_remove_prerequisites(prototype_name, prerequisites)
    local prototype = data.raw.technology[prototype_name]
    if not prototype then
        return
    end
    for _, new_prerequisite in pairs(prerequisites) do
        for i = #prototype.prerequisites, 1, -1 do
            if prototype.prerequisites[i] == new_prerequisite then
                table.remove(prototype.prerequisites, i)
            end
        end
    end
end

---Addes science required to unlock 1 tech
---@param prototype_name string #Name of tech to adjust
---@param ingredients table #Name of ingredients to add
---@param cascade boolean #Apply it to all the children?
function data_util.tech_add_ingredients(prototype_name, ingredients, cascade)
    --log("tech_add_ingredients: " .. prototype_name)
    local prototype = data.raw.technology[prototype_name]
    if not prototype then
        return
    end
    local added = false
    for _, new_ingredient in pairs(ingredients) do
        local found = false
        for _, old_ingredient in pairs(prototype.unit.ingredients) do
            if old_ingredient[1] == new_ingredient then
                found = true
                break
            end
        end
        if not found then
            table.insert(prototype.unit.ingredients, { new_ingredient, 1 })
            added = true
        end
    end
    if added and cascade then
        local child_techs = data_util.tech_find_child_names(prototype_name)
        for _, tech in pairs(child_techs) do
            data_util.tech_add_ingredients(tech, ingredients, cascade)
        end
    end
end

---Removes science required to unlock a more then 1 tech
---@param prototype_name string #Name of tech to adjust
---@param packs any #Name of ingredients to remove (can be string ot table of strings)
function data_util.tech_remove_ingredients(prototype_name, packs)
    local prototype = data.raw.technology[prototype_name]
    if type(packs) == "string" then
        packs = { packs }
    end
    if prototype then
        for _, pack in pairs(packs) do
            for i = #prototype.unit.ingredients, 1, -1 do
                if prototype.unit.ingredients[i] and prototype.unit.ingredients[i][1] == pack then
                    table.remove(prototype.unit.ingredients, i)
                end
            end
        end
    end
end

function data_util.recipe_replace_result(recipe_name, old_result, new_result, amount)
    local recipe = data.raw.recipe[recipe_name]
    if recipe and recipe.results then
        for _, result in pairs(recipe.results) do
            if result.name == old_result then
                result.name = new_result
                result.amount = amount
            end
        end
    end
end

return data_util
