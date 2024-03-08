local function create_subgroup(name_subgroup, group, order)
    if name_subgroup then
        if data.raw["item-subgroup"][name_subgroup] then
            if group then
                data.raw["item-subgroup"][name_subgroup].group = group
            end
            if order then
                data.raw["item-subgroup"][name_subgroup].order = order
            end
        else
            data:extend {
                {
                    type = "item-subgroup",
                    name = name_subgroup,
                    group = group,
                    order = tostring(order),
                }
            }
        end
    end
end

local function set_subgroup_to_prototype(name_prototype, subgroup, order)
    if name_prototype then
        if data.raw["item-subgroup"][subgroup] then
            for type, _ in pairs(data.raw) do
                if data.raw[type][name_prototype] then
                    if subgroup then
                        data.raw[type][name_prototype].subgroup = subgroup
                    end
                    if order then
                        data.raw[type][name_prototype].order = tostring(order)
                    end
                end
            end
        end
    end
end

return {
    set_subgroup_to_prototype = set_subgroup_to_prototype,
    create_subgroup = create_subgroup,
}
