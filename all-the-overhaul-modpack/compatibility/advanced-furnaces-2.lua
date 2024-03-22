if mods['Load-Furn-2'] then
    local mk1 = atom.util.Recipe("furnace-pro-01")
    mk1.addIngredient("temperature-sensor", 1)
    mk1.addIngredient("crucible", 1)
    mk1.addIngredient("hardened-hull", 10)
    mk1.addIngredient("zirconium-plate", 10)
    mk1.replaceIngredient("steel-plate", mods["IfNickel"] and "nitinol-plate" or "tungsten-plate")

    local mk2 = atom.util.Recipe("furnace-pro-02")
    mk2.addIngredient("temperature-sensor", 1)
    mk2.addIngredient("crucible", 1)
    mk2.addIngredient("hardened-hull", 20)
    mk2.addIngredient("zirconium-plate", 20)
    mk2.replaceIngredient("steel-plate", "titanium-plate")

    local mk3 = atom.util.Recipe("furnace-pro-03")
    mk3.addIngredient("temperature-sensor", 1)
    mk3.addIngredient("graphite", 10)

    local mk4 = atom.util.Recipe("furnace-pro-04")
    mk4.addIngredient("temperature-sensor", 1)
    mk4.addIngredient("imersium-plate", 10)

    local mk5 = atom.util.Recipe("furnace-pro-05")
    mk5.addIngredient("temperature-sensor", 1)
    mk5.addIngredient("se-heavy-girder", 10)

    atom.util.Recipe("kr-advanced-furnace").replaceIngredient("5d-electric-furnace-03", "furnace-pro-05")
end