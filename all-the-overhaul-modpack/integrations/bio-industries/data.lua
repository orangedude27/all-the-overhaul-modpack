require("modules")

-- Clean Air 0
local cleanAir0 = atom.util.Recipe({
    type = "recipe",
    name = "bi-purified-air-0",
    icon = "__Bio_Industries__/graphics/icons/clean-air.png",
    icon_size = 64,
    category = "clean-air",
    subgroup = "bio-bio-gardens-fluid",
    order = "zzz-clean-air",
    enabled = false,
    always_show_made_in = true,
    allow_decomposition = false,
    energy_required = 10,
    emissions_multiplier = 0.25,
    ingredients = {
        { type = "fluid", name = "water", amount = 50 },
    },
    results = { { type = "item", name = "bi-purified-air", amount = 1, probability = 0 } },
    main_product = ""
})
cleanAir0.apply()
cleanAir0.unlockedByTechnology("bi-tech-fertilizer")