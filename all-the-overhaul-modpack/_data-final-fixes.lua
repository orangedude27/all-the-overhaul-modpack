-- final fixes prototypes
if mods["RampantArsenal"] then
    require("_prototypes/rampant-arsenal-final")
end

require("_prototypes/common-final")
require("_prototypes/recipe")
require("_prototypes/technology")
require("_prototypes/sorting/sorter")

data.raw["item"]["fu_tech_sign"].icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-catalogue-2.png"
data.raw["item"]["fu_tech_sign"].icon_size = 128

for _, ammo in pairs(data.raw.ammo) do
    if type(ammo.ammo_type) == "table" then
        for _, category in pairs(ammo.ammo_type) do
            if category ~= "bullet" then
                goto continue
            else
                if type(ammo.ammo_type.action) == "table" then
                    for _, action in pairs(ammo.ammo_type.action) do
                        if action.action_delivery and action.action_delivery[1] then
                            for _, action_delivery in pairs(action.action_delivery) do
                                if action_delivery.max_range then
                                    action_delivery.max_range = 79
                                end
                            end
                        elseif action.action_delivery and action.action_delivery.max_range then
                            action.action_delivery.max_range = 79
                        end
                    end
                end
            end
        end
    end
    :: continue ::
end

table.insert(data.raw["assembling-machine"]["fu_ingot"].crafting_categories, "casting")