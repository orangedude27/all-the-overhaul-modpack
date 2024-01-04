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
table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-1")
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-2")
table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-2")
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-3")
table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-3")
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-4")
table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-4")

data.raw.lab["fu_lab_entity"].inputs = util.table.deepcopy(data.raw.lab["kr-singularity-lab"].inputs)

for i = 4, 10 do
    local lab_name = "5d-lab-" .. (i < 10 and "0" or "") .. i
    data.raw.lab[lab_name].se_allow_in_space = true
    data.raw.lab[lab_name].inputs = util.table.deepcopy(data.raw.lab["biusart-lab"].inputs)
end