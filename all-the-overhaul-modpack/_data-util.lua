local data_util = {}
local debug = false
data_util.mod_name = "all-the-overhaul-modpack"
data_util.mod_path = "__" .. data_util.mod_name .. "__"

data_util.char_to_multiplier = {
    m = 0.001,
    c = 0.01,
    d = 0.1,
    h = 100,
    k = 1000,
    M = 1000000,
    G = 1000000000,
    T = 1000000000000,
    P = 1000000000000000,
}

---Converts string to number, du
---@param str string #string in
---@return number number #Number Returned
function data_util.string_to_number(str)
    str = "" .. str
    local number_string = ""
    local last_char = nil
    for i = 1, #str do
        local c = str:sub(i, i)
        if c == "." or tonumber(c) ~= nil then
            number_string = number_string .. c
        else
            last_char = c
            break
        end
    end
    if last_char and data_util.char_to_multiplier[last_char] then
        return tonumber(number_string) * data_util.char_to_multiplier[last_char]
    end
    return tonumber(number_string)
end

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

---Removes 1 value from a table
---@param list table #Table to remove from
---@param item #What to remove
function data_util.remove_from_table(list, item)
    local index = 0
    for _, _item in ipairs(list) do
        if item == _item then
            index = _
            break
        end
    end
    if index > 0 then
        table.remove(list, index)
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

function data_util.placableAsEntity(check)
    if check.type == "item" then
        if check.place_result then
            return true
        end
    end
    return false
end

function data_util.placableAsTile(check)
    if check.type == "tile" then
        if check.place_as_tile then
            return true
        end
    end
    return false
end

function data_util.rocketLaunchProduct(check)
    if check.type == "item" then
        if check.rocket_launch_product then
            data_util.debuglog("RocketLaunch:True")
            return true
        end
        data_util.debuglog("RocketLaunch:False2")
    end
    data_util.debuglog("RocketLaunch:False1")
    return false
end

function data_util.emissions(check)
    if check.energy_source then
        if check.energy_source.emissions_per_minute then
            data_util.debuglog("Emissions:True")
            return true
        end
        data_util.debuglog("Emissions:False2")
    end
    data_util.debuglog("Emissions:False1")
    return false
end

function data_util.return_item_proto(check)
    for key, value in pairs(data.raw.tile) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.fluid) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.ammo) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.capsule) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.gun) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.module) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.tool) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.armor) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["item-with-entity-data"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw.item) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["rail-planner"]) do
        if value.name == check then
            return value
        end
    end
    return nil
end

function data_util.return_enity_proto(check)
    for key, value in pairs(data.raw["container"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["logistic-container"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["transport-belt"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["loader"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["loader-1x1"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["underground-belt"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["splitter"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["inserter"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["pipe"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["pipe-to-ground"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["pump"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["electric-pole"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["electric-energy-interface"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["logistic-robot"]) do
        if value.name == check then
            return "roboport"
        end
    end
    for key, value in pairs(data.raw["construction-robot"]) do
        if value.name == check then
            return "roboport"
        end
    end
    for key, value in pairs(data.raw["roboport"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["storage-tank"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["rocket-silo"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["car"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["locomotive"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["train-stop"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["rail-chain-signal"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["rail-signal"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["spider-vehicle"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["cargo-wagon"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["fluid-wagon"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["power-switch"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["arithmetic-combinator"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["decider-combinator"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["constant-combinator"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["programmable-speaker"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["lamp"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["burner-generator"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["solar-panel"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["generator"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["boiler"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["heat-pipe"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["accumulator"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["furnace"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["mining-drill"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["assembling-machine"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["furnace"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["reactor"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["lab"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["beacon"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["artillery-wagon"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["wall"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["artillery-turret"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["ammo-turret"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["radar"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["gate"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["linked-container"]) do
        if value.name == check then
            return "container"
        end
    end
    for key, value in pairs(data.raw["offshore-pump"]) do
        if value.name == check then
            return value
        end
    end
    for key, value in pairs(data.raw["simple-entity-with-force"]) do
        if value.name == check then
            return "text"
        end
    end
    for key, value in pairs(data.raw["simple-entity-with-owner"]) do
        if value.name == check then
            return "display"
        end
    end
    return nil
end

function data_util.CheckName(check)
    if check == "fu_boiler_entity" then
        return "plant"
    elseif check == "el_pressurizer_entity" then
        return "boiler"
    elseif check == "se-electric-boiler" then
        return "boiler"
    elseif check == "el_grower_entity" then
        return "facility"
    elseif check == "fi_fiberer_entity" then
        return "facility"
    elseif check == "fi_compound_machine_entity" then
        return "facility"
    elseif check == "kr-research-server" then
        return "facility"
    elseif check == "fu_fusor_entity" then
        return "facility"
    elseif check == "el_purifier_entity" then
        return "facility"
    elseif check == "fu_fusor_entity" then
        return "facility"
    elseif check == "se-nexus" then
        return "facility"
    elseif check == "kr-bio-lab" then
        return "facility"
    elseif check == "bi-bio-reactor" then
        return "plant"
    elseif check == "fu_tokamak_reactor_entity" then
        return "248klead"
    elseif check == "fu_stelar_reactor_entity" then
        return "248klead"
    elseif check == "fu_activator_entity" then
        return "248klead"
    elseif check == "fu_magnet_entity" then
        return "248klead"
    elseif check == "fu_plasma_entity" then
        return "248klead"
    elseif check == "fu_laser_entity" then
        return "248klead"
    elseif check == "fu_exchanger_entity" then
        return "248klead"
    elseif check == "kr-stabilizer-charging-station" then
        return "battery"
    elseif check == "gr_white_hole_entity" then
        return "facility"
    elseif check == "gr_black_hole_base_entity" then
        return "facility"
    elseif check == "kr-fuild-burner" then
        return "extra"
    elseif check == "fi_castor_entity" then
        return "extra"
    elseif check == "fu_burner_entity" then
        return "extra"
    elseif string.find(string.lower(check), "signal") and string.find(string.lower(check), "receiver") then
        return "signals"
    elseif string.find(string.lower(check), "signal") and string.find(string.lower(check), "sender") then
        return "signals"
    elseif string.find(string.lower(check), "beam") or string.find(string.lower(check), "energy") and string.find(string.lower(check), "transmitter") then
        return "beam"
    elseif string.find(string.lower(check), "kr") and string.find(string.lower(check), "fusion") and string.find(string.lower(check), "reactor") then
        return "boiler"
    elseif string.find(string.lower(check), "el") and string.find(string.lower(check), "ki") then
        return "el_ki"
    elseif string.find(string.lower(check), "fi") and string.find(string.lower(check), "ki") then
        return "fi_ki"
    elseif string.find(string.lower(check), "fu") and string.find(string.lower(check), "ki") then
        return "fu_ki"
    elseif string.find(string.lower(check), "matter") and string.find(string.lower(check), "assembler") then
        return "facility"
    elseif string.find(string.lower(check), "matter") and string.find(string.lower(check), "plant") then
        return "facility"
    elseif string.find(string.lower(check), "charger") and string.find(string.lower(check), "entity") then
        if not string.find(string.lower(check), "robo") then
            return "facility"
        end
    elseif string.find(string.lower(check), "fluid") then
        if string.find(string.lower(check), "wagon") then
            return
        end
        if string.find(string.lower(check), "storage") then
            return
        end
        if string.find(string.lower(check), "generator") then
            return
        end
        return "plant"
    elseif string.find(string.lower(check), "equipment") and string.find(string.lower(check), "gantry") then
        return "extra"
        --need to be last
    elseif string.find(string.lower(check), "battery") then
        return "battery"
    elseif string.find(string.lower(check), "heat") then
        return "heat"
    elseif string.find(string.lower(check), "furnace") then
        return "furnace"
    elseif string.find(string.lower(check), "star") then
        return "star"
    elseif string.find(string.lower(check), "locomotive") then
        return "locomotive"
    elseif string.find(string.lower(check), "computer") then
        return "computer"
    elseif string.find(string.lower(check), "facility") then
        return "facility"
    elseif string.find(string.lower(check), "assembling") then
        return "assembling"
    elseif string.find(string.lower(check), "turbine") then
        return "turbine"
    elseif string.find(string.lower(check), "laboratory") then
        return "computer"
    elseif string.find(string.lower(check), "manufactory") then
        return "assembling"
    elseif string.find(string.lower(check), "crafter") then
        return "assembling"
    elseif string.find(string.lower(check), "telescope") then
        return "telescope"
    elseif string.find(string.lower(check), "spaceship") then
        return "spaceship"
    elseif string.find(string.lower(check), "arboretum") then
        return "purifier"
    elseif string.find(string.lower(check), "centrifuge") then
        return "centrifuge"
    elseif string.find(string.lower(check), "plant") then
        return "plant"
    elseif string.find(string.lower(check), "refinery") then
        return "plant"
    elseif string.find(string.lower(check), "atmospheric") then
        return "plant"
    elseif string.find(string.lower(check), "cast") then
        return "furnace"
    elseif string.find(string.lower(check), "ingot") then
        return "furnace"
    elseif string.find(string.lower(check), "cokery") then
        return "furnace"
    elseif string.find(string.lower(check), "processor") then
        return "furnace"
    elseif string.find(string.lower(check), "crusher") then
        return "crusher"
    elseif string.find(string.lower(check), "miner") then
        return "mining-drill"
    elseif string.find(string.lower(check), "pulveriser") then
        return "crusher"
    elseif string.find(string.lower(check), "cannon") then
        return "cannon"
    elseif string.find(string.lower(check), "server") then
        return "computer"
    elseif string.find(string.lower(check), "launch") then
        return "rocket-silo"
    elseif string.find(string.lower(check), "landing") then
        return "rocket-silo"
    elseif string.find(string.lower(check), "capsule") then
        return "rocket-silo"
    else
        return nil
    end
end

---Prints to log if toggle is on
---@param message string
function data_util.debuglog(message)
    if debug then
        log(message)
    end
end

---Not sure what this does
function data_util.result_to_results(recipe_section)
    if not recipe_section.result then
        return
    end
    local result_count = recipe_section.result_count or 1
    if type(recipe_section.result) == "string" then
        recipe_section.results = { { type = "item", name = recipe_section.result, amount = result_count } }
    elseif recipe_section.result.name then
        recipe_section.results = { recipe_section.result }
    elseif recipe_section.result[1] then
        result_count = recipe_section.result[2] or result_count
        recipe_section.results = { { type = "item", name = recipe_section.result[1], amount = result_count } }
    end
    recipe_section.result = nil
end

---Not sure what this does
function data_util.conditional_modify(prototype)
    if data.raw[prototype.type] and data.raw[prototype.type][prototype.name] then
        local raw = data.raw[prototype.type][prototype.name]

        -- update to new spec
        if not raw.normal then
            raw.normal = {
                enabled = raw.enabled,
                energy_required = raw.energy_required,
                requester_paste_multiplier = raw.requester_paste_multiplier,
                hidden = raw.hidden,
                ingredients = raw.ingredients,
                results = raw.results,
                result = raw.result,
                result_count = raw.result_count,
            }
            raw.enabled = nil
            raw.energy_required = nil
            raw.requester_paste_multiplier = nil
            raw.hidden = nil
            raw.ingredients = nil
            raw.results = nil
            raw.result = nil
            raw.result_count = nil
        end
        if not raw.expensive then
            raw.expensive = table.deepcopy(raw.normal)
        end
        if not raw.normal.results and raw.normal.result then
            data_util.result_to_results(raw.normal)
        end
        if not raw.expensive.results and raw.expensive.result then
            data_util.result_to_results(raw.expensive)
        end

        for key, property in pairs(prototype) do
            if key == "ingredients" then
                raw.normal.ingredients = table.deepcopy(property)
                raw.expensive.ingredients = table.deepcopy(property)
            elseif key == "results" then
                raw.normal.results = table.deepcopy(property)
                raw.expensive.results = table.deepcopy(property)
            elseif key ~= "normal" and key ~= "expensive" then
                raw[key] = property
            end
        end

        if prototype.normal then
            for key, property in pairs(prototype.normal) do
                raw.normal[key] = property
            end
        end

        if prototype.expensive then
            for key, property in pairs(prototype.expensive) do
                raw.expensive[key] = property
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
    if recipe.normal and recipe.normal.ingredients then
        data_util.replace_or_add_ingredient_sub(recipe.normal, old, new, amount, is_fluid)
    end
    if recipe.expensive and recipe.expensive.ingredients and recipe.expensive.ingredients ~= (recipe.normal and recipe.normal.ingredients) then
        data_util.replace_or_add_ingredient_sub(recipe.expensive, old, new, amount, is_fluid)
    end
end

---Makes recipe hidden
---@param recipe_name string #Name of recipe
function data_util.disable_recipe(recipe_name)
    data_util.conditional_modify({
        type = "recipe",
        name = recipe_name,
        enabled = false,
        normal = {
            enabled = false
        },
        expensive = {
            enabled = false
        }
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

---Addes science required to unlock more then 1 tech
---@param prototype_name table #Names of tech to adjust
---@param ingredients table #Name of ingredients to add
---@param cascade bool #Apply it to all the children?
function data_util.techs_add_ingredients(prototype_names, ingredients, cascade)
    for _, prototype_name in pairs(prototype_names) do
        data_util.tech_add_ingredients(prototype_name, ingredients, cascade)
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

---Allows recipe to use productivity
---@param recipe_name string #Name of recipe to adjust
function data_util.allow_productivity(recipe_name)
    if data.raw.recipe[recipe_name] then
        for _, prototype in pairs(data.raw["module"]) do
            if prototype.limitation and string.find(prototype.name, "productivity", 1, true) then
                table.insert(prototype.limitation, recipe_name)
            end
        end
    end
end

--- No idea, somthing to do with high resolution
function data_util.auto_sr_hr(hr_version)
    local sr_version = table.deepcopy(hr_version)
    if not hr_version.scale then
        hr_version.scale = 0.5
    end
    if not hr_version.priority then
        hr_version.priority = "extra-high"
    end
    sr_version.scale = (hr_version.scale or 0.5) * 2
    sr_version.width = math.floor(hr_version.width / 2)
    sr_version.height = math.floor(hr_version.height / 2)
    if hr_version.x then
        sr_version.x = math.floor(hr_version.x / 2)
    end
    if hr_version.y then
        sr_version.y = math.floor(hr_version.y / 2)
    end
    sr_version.filename = string.replace(sr_version.filename, "/hr/", "/sr/")
    sr_version.filename = string.replace(sr_version.filename, "/hr-", "/")
    sr_version.hr_version = hr_version
    return sr_version
end

--- Sets tech icon to xx
---@param xx string #What to get
---@param technology_icon icon #What icon to adjust
---@param icon_size int #Size to set to
---@return icons icons #Icons Returned
function data_util.technology_icon_xx(xx, technology_icon, icon_size)
    local scale = icon_size / 256
    local icons = {
        {
            icon = technology_icon,
            icon_size = icon_size,
            icon_mipmaps = 4
        },
        {
            icon = "__core__/graphics/icons/technology/constants/" .. xx .. ".png",
            icon_size = 128,
            scale = scale,
            icon_mipmaps = 3,
            shift = { 100 * scale, 100 * scale }
        }
    }
    return icons
end

function data_util.technology_icon_constant_capacity(technology_icon, icon_size)
    return data_util.technology_icon_xx("constant-capacity", technology_icon, icon_size)
end

-- Puts sub-icon in the top-left of the main icon
-- If multiple sub-icons, they will all overlap if not given a new shift value
function data_util.sub_icons(icon_main, ...)
    local icons_sub = { ... }
    local results = { { icon = icon_main, shift = { 2, 0 }, icon_size = 64 } }
    for _, icon in pairs(icons_sub) do
        table.insert(results, {
            icon = icon.icon or icon,
            scale = icon.scale or 0.25,
            shift = icon.shift or { -7, -7 },
            icon_size = 64
        })
    end
    return results
end

function data_util.tint_recursive(subject, tint)
    if not subject then
        return
    end
    if subject.filename then
        subject.tint = tint
    end
    for _, sub in pairs(subject) do
        if (type(sub) == "table") then
            data_util.tint_recursive(sub, tint)
        end
    end
end

function data_util.add_fuel_category(burner, category)
    burner.fuel_categories = burner.fuel_categories or {}
    if burner.fuel_category then
        table.insert(burner.fuel_categories, burner.fuel_category)
        burner.fuel_category = nil
    end
    if not data_util.table_contains(burner.fuel_categories, category) then
        table.insert(burner.fuel_categories, category)
    end
end

function data_util.recipe_set_result_count(recipe_name, count)
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
        recipe.result_count = count
        if recipe.results and recipe.results[1] then
            recipe.results[1].amount = count
        end
        if recipe.normal then
            recipe.normal.result_count = count
            if recipe.normal.results and recipe.normal.results[1] then
                recipe.normal.results[1].amount = count
            end
        end
        if recipe.expensive then
            recipe.expensive.result_count = count
            if recipe.expensive.results and recipe.expensive.results[1] then
                recipe.expensive.results[1].amount = count
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

function data_util.recipe_set_time(recipe_name, time)
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
        if (not recipe.normal) and (not recipe.expensive) then
            recipe.energy_required = time
        end
        if recipe.normal then
            recipe.normal.energy_required = time
        end
        if recipe.expensive then
            recipe.expensive.energy_required = time
        end
    end
end

function data_util.recipe_multiply_time(recipe_name, multiplier)
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
        if recipe.energy_required then
            recipe.energy_required = recipe.energy_required * multiplier
        end
        if recipe.normal and recipe.normal.energy_required then
            recipe.normal.energy_required = recipe.normal
                                                  .energy_required * multiplier
        end
        if recipe.expensive and recipe.expensive.energy_required then
            recipe.expensive.energy_required = recipe.expensive
                                                     .energy_required * multiplier
        end
    end
end

function data_util.recipe_has_ingredient(recipe, ingredient)
    if recipe.ingredients then
        for _, i in pairs(recipe.ingredients) do
            if (i.name or i[1]) == ingredient then
                return true
            end
        end
    end
    return false
end

function data_util.is_ingredient_used(ingredient)
    for _, recipe in pairs(data.raw.recipe) do
        if (data_util.recipe_has_ingredient(recipe, ingredient)) or
                (recipe.normal and data_util.recipe_has_ingredient(recipe.normal, ingredient)) or
                (recipe.expensive and data_util.recipe_has_ingredient(recipe.expensive, ingredient)) then
            return true
        end
    end
    return false
end

function data_util.recipe_has_result(recipe, result)
    if recipe.results then
        for _, i in pairs(recipe.results) do
            if (i.name or i[1]) == result then
                return true
            end
        end
    end
    return recipe.result == result
end

function data_util.find_recipes_with_result(result)
    local recipes = {}
    for _, recipe in pairs(data.raw.recipe) do
        if (data_util.recipe_has_result(recipe, result)) or
                (recipe.normal and data_util.recipe_has_result(recipe.normal, result)) or
                (recipe.expensive and data_util.recipe_has_result(recipe.expensive, result)) then
            table.insert(recipes, recipe.name)
        end
    end
    return recipes
end

local function find_and_replace_ingredients_sub(ingredients, replacements)
    for _, ingredient in pairs(ingredients) do
        for from, to in pairs(replacements) do
            if ingredient.name == from then
                ingredient.name = to
            elseif ingredient[1] == from then
                ingredient[1] = to
            end
        end
    end
end

-- Input: {["replace-from"] = "replace-to"}
function data_util.find_and_replace_ingredients(replacements)
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.ingredients then
            find_and_replace_ingredients_sub(recipe.ingredients, replacements)
        end
        if recipe.normal and recipe.normal.ingredients then
            find_and_replace_ingredients_sub(recipe.normal.ingredients,
                    replacements)
        end
        if recipe.expensive and recipe.expensive.ingredients then
            find_and_replace_ingredients_sub(
                    recipe.expensive.ingredients, replacements)
        end
    end
end

-- Input: {["replace-from"] = "replace-to"}
function data_util.find_and_replace_results(replacements)
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.result then
            local result = { { recipe.result } }
            find_and_replace_ingredients_sub(result, replacements)
            if (result[1][1] ~= recipe.result) then
                recipe.result = result[1][1]
            end
        end
        if recipe.results then
            find_and_replace_ingredients_sub(recipe.results, replacements)
        end
        if recipe.normal and recipe.normal.results then
            find_and_replace_ingredients_sub(recipe.normal.results,
                    replacements)
        end
        if recipe.expensive and recipe.expensive.results then
            find_and_replace_ingredients_sub(
                    recipe.expensive.results, replacements)
        end
    end
end

--[[
recipe-core fragment
result-bismuth not chance
change amount to 4

recipe-core
result-bismtuh % chance
replace with gold
]]
--

---if amount is whole number, then amount will be adjusted. if decimal then probability will be adjusted
---@param recipe string #Recipe to change
---@param changed string #What to change
---@param amount any #Amount to change to
function data_util.adjust_product_amount(recipe, changed, amount)
    local products = data.raw.recipe[recipe].results
    for _, product in pairs(products) do
        if product.name == changed then
            if amount == math.floor(amount) then
                product.amount = amount
            else
                product.probability = amount
            end
        end
    end
end

---replacment = {[from] = "to"}, only works on probability products
---@param recipe string
---@param replacments table
function data_util.replace_product_with_probability(recipe, replacments)
    for _, product in pairs(data.raw.recipe[recipe].results) do
        for from, to in pairs(replacments) do
            if product.name == from and product.probability ~= nil
            then
                product.name = to
            end
        end
    end
end

---not been tested
---@param recipe string
---@param remove string
function data_util.remove_product(recipe, remove)
    if data.raw.recipe[recipe] and data.raw.recipe[recipe].results then
        for i, product in pairs(data.raw.recipe[recipe].results) do
            if product.name == remove then
                table.remove(data.raw.recipe[recipe].results, i)
            end
        end
    end
end

function data_util.remove_recipes_from_technologies(recipes)
    for _, recipe in pairs(recipes) do
        for _, tech in pairs(data.raw.technology) do
            if tech.effects then
                for k, effect in pairs(tech.effects) do
                    if effect.recipe == recipe then
                        table.remove(tech.effects, k)
                        break
                    end
                end
            end
        end
    end
end

-- Set item subgroup
function data_util.set_item_subgroup(item, subgroup, options)
    if not should_force(options) and bypass(item) then
        return
    end -- imperfect, close enough for now?
    if data.raw.item[item] and data.raw["item-subgroup"][subgroup] then
        data.raw.item[item].subgroup = subgroup
    end
end

function data_util.PrintAllRecipesToLog()
    for _, recipe in pairs(data.raw.recipe) do
        if (recipe.subgroup ~= nil and not data_util.table_contains(SubGroups, recipe.subgroup)) then
            table.insert(SubGroups, recipe.group)
            log(recipe.name)
            log(recipe.group)
            log(recipe.subgroup)
            log(recipe.subgroup.group)
            log(recipe.order)
        end
    end
end

function data_util.PrintAllItemsToLog()
    for _, item in pairs(data.raw['item']) do
        log(item.name)
    end
end

function data_util.PrintAllSubGroupsToLog()
    for _, g in pairs(data.raw["item-subgroup"]) do
        log(g.name)
        log(g.group)
        log(g.order)
    end
end

function data_util.CheckNames(name)
    for _, recipe in pairs(data.raw.recipe) do
        if string.find(recipe.name, name) then
            log(recipe.name)
        end
    end
end

return data_util
