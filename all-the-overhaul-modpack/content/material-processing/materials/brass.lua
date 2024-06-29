local Recipe = atom.util.Recipe

local config = atom.processing.util.prepareConfig({
    name = "brass",
    order = "c",
    enableAtStart = true,
    itemNames = {
        plate = "brass-plate",
        molten = "atom-brass-molten"
    },
    icons = {
        ore = atom.processing.materials.copper.icons.ore,
        dust = atom.processing.materials.copper.icons.dust,
        ingot = atom.processing.materials.copper.icons.ingot,
        "plate", "molten"
    }
})

local create = atom.processing.create(config)

local zinc = atom.processing.materials.zinc

local function addSmallIconRight(recipe, icon)
    table.insert(recipe.prototype.icons, atom.util.icon.createSmallIcon(icon, "top-right"))
end

local oreToPlateRecipe = create.oreToPlateRecipe()
oreToPlateRecipe.prototype.ingredients = {
    { "copper-ore", 3 },
    { "zinc-ore", 3 }
}
addSmallIconRight(oreToPlateRecipe, atom.util.icon.createSmallIcon(zinc.icons.ore))

local dustToPlateRecipe = create.dustToPlateRecipe()
dustToPlateRecipe.prototype.ingredients = {
    { "5d-copper-dust", 6 },
    { "atom-zinc-dust", 6 }
}
addSmallIconRight(dustToPlateRecipe, atom.util.icon.createSmallIcon(zinc.icons.dust))

local ingotToPlateRecipe = create.ingotToPlateRecipe()
ingotToPlateRecipe.prototype.ingredients = {
    { name = "se-copper-ingot", amount = 1 },
    { name = "zinc-ingot", amount = 1 }
}
addSmallIconRight(ingotToPlateRecipe, atom.util.icon.createSmallIcon(zinc.icons.ingot))

-- local ingotToMoltenRecipe = create.ingotToMoltenRecipe()
-- ingotToMoltenRecipe.prototype.ingredients = {
--     { name = "se-copper-ingot", amount = 1 },
--     { name = "zinc-ingot", amount = 1 }
-- }
-- addSmallIconRight(ingotToMoltenRecipe, atom.util.icon.createSmallIcon(zinc.icons.ingot))

atom.util.applyAll({
    oreToPlateRecipe,
    dustToPlateRecipe,
    ingotToPlateRecipe,
    {
        type = "fluid",
        name = "atom-" .. config.name .. "-molten",
        default_temperature = 232, -- TODO
        max_temperature = 232, -- TODO
        base_color = { r = 255, g = 160, b = 60 }, -- TODO
        flow_color = { r = 255, g = 160, b = 60 }, -- TODO
        icons = { config.icons.molten },
        order = "a[molten]-b",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid"
    }
})

atom.processing.util.finalizeConfig(config)

atom.processing.materials.brass = config