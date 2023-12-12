-- final fixes prototypes
if mods["RampantArsenal"] then
    require("prototypes/rampant-arsenal-final")
end

require("prototypes/common-final")
require("prototypes/recipe")
require("prototypes/technology")
require("prototypes/sorting/sorter")


data.raw["item"]["fu_tech_sign_item"].icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-catalogue-2.png"
data.raw["item"]["fu_tech_sign_item"].icon_size = 128

--Science packs in labs
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-1")
table.insert(data.raw.lab['biusart-lab'].inputs, "fusion-science-pack-1")
table.insert(data.raw.lab["gr_lab_entity"].inputs, "fusion-science-pack-1")
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-2")
table.insert(data.raw.lab['biusart-lab'].inputs, "fusion-science-pack-2")
table.insert(data.raw.lab["gr_lab_entity"].inputs, "fusion-science-pack-2")
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-3")
table.insert(data.raw.lab['biusart-lab'].inputs, "fusion-science-pack-3")
table.insert(data.raw.lab["gr_lab_entity"].inputs, "fusion-science-pack-3")
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-4")
table.insert(data.raw.lab['biusart-lab'].inputs, "fusion-science-pack-4")
table.insert(data.raw.lab["gr_lab_entity"].inputs, "fusion-science-pack-4")