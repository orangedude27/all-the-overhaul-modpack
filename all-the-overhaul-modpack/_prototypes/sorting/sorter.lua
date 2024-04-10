local util = require("_data-util")
require("_prototypes/sorting/barrelsort")
require("_prototypes/sorting/groups")
require("_prototypes/sorting/tables")

--smelting

---Checks if SortDirectlyTable contains the recipe.
---@param recipe any
---@return boolean
local function SortDirectly(recipe)
    local contains = false
    for name, subgroup in pairs(SortDirectTable) do
        if (recipe.name == name) then
            util.debuglog(subgroup.name)
            util.debuglog(subgroup.order)
            recipe.subgroup = subgroup.name
            recipe.order = subgroup.order
            contains = true
            goto continue
        else
            contains = false
        end
    end
    ::continue::
    util.debuglog("PIG:DirectSort:" .. tostring(contains) .. ":name:" .. recipe.name)
    return contains
end

---Checks Blacklist of what group we are on.
---@param name string
---@param group string
---@return boolean
local function InBlacklist(name, group)
    for _, value in pairs(GroupBlacklist[group]) do
        if (util.find_string_plain(name, value)) then
            util.debuglog("PIG:Blacklist:Found:" .. value)
            return true
        end
    end
end

---Checks if there is subgroup and set group as parent, if none make one and set its parent to group
---@param name string # what to check for
---@param group string # what group to add if there is none
local function CreateSubGroupIfNone(name, group, Sorder)
    if not util.subgroup_table_contains_name(data.raw["item-subgroup"], name) then
        data:extend({
            {
                type = "item-subgroup",
                name = name,
                group = group,
                order = Sorder
            }
        })
        util.debuglog("PIG:Group:" .. group .. ",Subgroup:" .. name)
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
end


---------------------------------------SORTERS-----------------------------------------------------------


---Checks group list to see if recipe fits in that group.
---@param recipe any
---@param group string
---@return boolean
local function Sort(recipe, group)
    util.debuglog("PIG:GROUP:" .. group)
    for name, SubOrder in pairs(GroupSubOrder[group]) do
        --GroupSubOrder.name is what to look for in recipe name GroupSubOrder.SubOrder is what order the subgroup will be in
        if recipe.name == name and not InBlacklist(recipe.name, group) then
            util.debuglog("PIG name Found " .. recipe.name)
            for lookat, replacewith in pairs(ReplaceSubgroupDirectName) do
                --if exact match to name in replace table, use that sub instead
                if recipe.name == lookat then
                    SetGroupSubOrder(recipe.name, replacewith.name, group, replacewith.order, SubOrder)
                    util.debuglog("PIG Found lookat:" .. recipe.name)
                    return true
                end
            end
            SetGroupSubOrder(recipe.name, name, group, "[a]", SubOrder)
            util.debuglog("PIG Found name:" .. recipe.name)
            return true
        end
        if util.find_string_plain(recipe.name, name) then
            for find, order in pairs(GroupRecipeOrder[group]) do
                if util.find_string_plain(recipe.name, find) and not InBlacklist(recipe.name, group) then
                    for lookat, replacewith in pairs(ReplaceSubgroup) do
                        --checks table to see if the key contains pattern of both name and find, if so replace sub with value
                        if util.find_string_plain(lookat, name) and util.find_string_plain(lookat, find) then
                            util.debuglog("PIG:found:name:" ..
                                    recipe.name ..
                                    ":name:" .. name .. ":group:" .. group .. ":order:" ..
                                    order .. ":sub:" .. SubOrder .. ":find:" .. find)
                            SetGroupSubOrder(recipe.name, replacewith, group, order, SubOrder)
                            return true
                        end
                    end
                end
                if util.find_string_plain(recipe.name, find) and not InBlacklist(recipe.name, group) then
                    util.debuglog("PIG:found:recipe:" ..
                            recipe.name .. ":name:" ..
                            name .. ":group:" .. group .. ":order:" .. order .. ":sub:" .. SubOrder .. ":find:" .. find)
                    SetGroupSubOrder(recipe.name, name, group, order, SubOrder)
                    return true
                end
            end
        end
    end
end

---Checks to see if recipe with string in name is in group and subgroup and sets if not
local function ChangeSubgroupAndGroup()
    if settings.startup["atom-enable-sorting"].value == true then
        for _, recipe in pairs(data.raw.recipe) do
            util.debuglog("PIG:recipe:" .. recipe.name)
            --if recipe name matches what we are looking for
            if not SortDirectly(recipe) then
                for _, Group in pairs(GroupSortOrder) do
                    if Sort(recipe, Group) then
                        break
                    end
                end
            end
        end
    end
end

ChangeSubgroupAndGroup()
