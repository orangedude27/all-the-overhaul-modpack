if mods["GhostOnWater"] then
    atom.util.item.removeByName("waterGhost-fi_solid_reactor_item")
    data.raw.reactor["waterGhost-fi_solid_reactor_entity"] = nil
end