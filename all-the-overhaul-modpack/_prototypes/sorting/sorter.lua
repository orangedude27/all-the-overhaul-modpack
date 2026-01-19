require("_prototypes/sorting/barrelsort")
require("_prototypes/sorting/groups")
require("_prototypes/sorting/tables")

-- Local helper functions to replace legacy util functions
local function find_string_plain(s, pattern)
    return string.find(s, pattern, 1, true)
end

local function subgroup_table_contains_name(table, name)
    return table[name] ~= nil
end

--smelting

---Checks if SortDirectlyTable contains the recipe.
---@param recipe any
---@return boolean
local function SortDirectly(recipe)
    local contains = false
    for name, subgroup in pairs(SortDirectTable) do
        if (recipe.name == name) then
            atom.util.log.debug(subgroup.name)
            atom.util.log.debug(subgroup.order)
            recipe.subgroup = subgroup.name
            recipe.order = subgroup.order
            contains = true
            goto continue
        else
            contains = false
        end
    end
    ::continue::
    atom.util.log.debug("PIG:DirectSort:" .. tostring(contains) .. ":name:" .. recipe.name)
    return contains
end

---Checks Blacklist of what group we are on.
---@param name string
---@param group string
---@return boolean
local function InBlacklist(name, group)
    for _, value in pairs(GroupBlacklist[group]) do
        if (find_string_plain(name, value)) then
            atom.util.log.debug("PIG:Blacklist:Found:" .. value)
            return true
        end
    end
end

---Checks if there is subgroup and set group as parent, if none make one and set its parent to group
---@param name string # what to check for
---@param group string # what group to add if there is none
local function CreateSubGroupIfNone(name, group, Sorder)
    if not subgroup_table_contains_name(data.raw["item-subgroup"], name) then
        data:extend({
            {
                type = "item-subgroup",
                name = name,
                group = group,
                order = Sorder
            }
        })
        atom.util.log.debug("PIG:Group:" .. group .. ",Subgroup:" .. name)
    else
        --set subgroup to group.
        data.raw["item-subgroup"][name].group = group
        data.raw["item-subgroup"][name].order = Sorder
    end
end

---Sets the recipe subgroup name and then group as parent. optional: sets order
---@param name string #recipe name
---@param subgroup string #subgroup name
---@param group string #group name
---@param Iorder string #recipe order
---@param Sorder string #sub order
local function SetGroupSubOrder(name, subgroup, group, Iorder, Sorder)
    CreateSubGroupIfNone(subgroup, group, Sorder)
    data.raw.recipe[name].subgroup = subgroup
    if Iorder then
        data.raw.recipe[name].order = Iorder
    end
    if data.raw.item[name] then
        data.raw.item[name].group = group
        data.raw.item[name].subgroup = subgroup
        if Iorder then
            data.raw.item[name].order = Iorder
        end
    end
end


---------------------------------------SORTERS-----------------------------------------------------------


---Checks group list to see if recipe fits in that group.
---@param recipe any
---@param group string
---@return boolean
local function Sort(recipe, group)
    atom.util.log.debug("PIG:GROUP:" .. group)
    for name, SubOrder in pairs(GroupSubOrder[group]) do
        --GroupSubOrder.name is what to look for in recipe name GroupSubOrder.SubOrder is what order the subgroup will be in
        if recipe.name == name and not InBlacklist(recipe.name, group) then
            atom.util.log.debug("PIG name Found " .. recipe.name)
            for lookat, replacewith in pairs(ReplaceSubgroupDirectName) do
                --if exact match to name in replace table, use that sub instead
                if recipe.name == lookat then
                    SetGroupSubOrder(recipe.name, replacewith.name, group, replacewith.order, SubOrder)
                    atom.util.log.debug("PIG Found lookat:" .. recipe.name)
                    return true
                end
            end
            SetGroupSubOrder(recipe.name, name, group, "[a]", SubOrder)
            atom.util.log.debug("PIG Found name:" .. recipe.name)
            return true
        end
        if find_string_plain(recipe.name, name) then
            for find, order in pairs(GroupRecipeOrder[group]) do
                if find_string_plain(recipe.name, find) and not InBlacklist(recipe.name, group) then
                    for lookat, replacewith in pairs(ReplaceSubgroup) do
                        --checks table to see if the key contains pattern of both name and find, if so replace sub with value
                        if find_string_plain(lookat, name) and find_string_plain(lookat, find) then
                            atom.util.log.debug("PIG:found:name:" ..
                                    recipe.name ..
                                    ":name:" .. name .. ":group:" .. group .. ":order:" ..
                                    order .. ":sub:" .. SubOrder .. ":find:" .. find)
                            SetGroupSubOrder(recipe.name, replacewith, group, order, SubOrder)
                            return true
                        end
                    end
                end
                if find_string_plain(recipe.name, find) and not InBlacklist(recipe.name, group) then
                    atom.util.log.debug("PIG:found:recipe:" ..
                            recipe.name .. ":name:" ..
                            name .. ":group:" .. group .. ":order:" .. order .. ":sub:" .. SubOrder .. ":find:" .. find)
                    SetGroupSubOrder(recipe.name, name, group, order, SubOrder)
                    return true
                end
            end
        end
    end
end

---Checks ForceGroupTable
---@param recipe any
---@return boolean
local function ForceSort(recipe)
    local entry = ForceGroupTable[recipe.name]
    if entry then
        if type(entry) == "string" then
            recipe.group = entry
            atom.util.log.debug("PIG:ForceSort:Group:" .. entry .. ":name:" .. recipe.name)
            return true
        elseif type(entry) == "table" then
            if entry.subgroup and entry.group then
                SetGroupSubOrder(recipe.name, entry.subgroup, entry.group, entry.order, entry.suborder)
            else
                if entry.group then recipe.group = entry.group end
                if entry.subgroup then recipe.subgroup = entry.subgroup end
                if entry.order then recipe.order = entry.order end
            end
            atom.util.log.debug("PIG:ForceSort:Table:name:" .. recipe.name)
            return true
        end
    end
    return false
end

---Checks to see if recipe with string in name is in group and subgroup and sets if not
local function ChangeSubgroupAndGroup()
    for _, recipe in pairs(data.raw.recipe) do
        atom.util.log.debug("PIG:recipe:" .. recipe.name)
        --if recipe name matches what we are looking for
        if not ForceSort(recipe) and not SortDirectly(recipe) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(recipe, Group) then
                    break
                end
            end
        end
    end
end

ChangeSubgroupAndGroup()
