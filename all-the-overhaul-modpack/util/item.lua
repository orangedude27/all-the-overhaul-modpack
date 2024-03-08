atom.util.item = {
    -- Removes an item by name together with all its dependencies
    -- @param name string The name of the item
    removeByName = function(name)
        atom.util.recipe.removeByItem(name)
        data.raw.item[name] = nil
    end
}