atom.util.item = {
    --- Removes an item by name together with all its dependencies
    --- @param name string The name of the item
    removeByName = function(name)
        local isFluid = data.raw.fluid[name] ~= nil
        atom.util.recipe.removeByItem(name)

        --- Remove filters from fluid_boxes
        --- See https://lua-api.factorio.com/latest/types/FluidBox.html#filter
        if (isFluid) then
            local function removeFilter(category)
                for _, entity in pairs(data.raw[category]) do
                    if (entity.fluid_boxes) then
                        for _, fluidBox in pairs(entity.fluid_boxes) do
                            if (type(fluidBox) == "table" and fluidBox.filter == name) then
                                fluidBox.filter = nil
                            end
                        end
                    end
                end
            end
            removeFilter("assembling-machine")
            removeFilter("furnace")
            removeFilter("rocket-silo")
        end

        data.raw.item[name] = nil
        data.raw.fluid[name] = nil
        data.raw.capsule[name] = nil
    end
}