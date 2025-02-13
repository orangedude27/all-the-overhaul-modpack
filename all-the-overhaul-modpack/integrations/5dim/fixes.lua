if mods["OD27_5dim_core"] then
    require("electric-furnace")
    require("assembler")
    require("masher")
    require("chemical-plant")
    require("oil-refinery")
    require("turrets")
    require("radar")
    require("centrifuge")
    require("nuclear")

    data.raw["lab"]["fu_lab_entity-spaced"].localised_name = { "entity-name." .. data.raw["lab"]["fu_lab_entity"].name }
end