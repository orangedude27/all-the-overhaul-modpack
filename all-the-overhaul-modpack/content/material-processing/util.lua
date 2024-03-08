--[[

About density
* Dust has half density. Numbers are doubled.
* Ingots have 3x density. Numbers are divided by 3.

config: {
    -- Base name of the material (e.g. "copper")
    name: string,

    -- Order string for the item subgroup (e.g. "a")
    order: string,

    -- Whether to enable the plate recipe at the start of the game
    enableAtStart: boolean,

    -- Names of the indermediate and end result items (e.g. "5d-copper-dust", "se-copper-ingot")
    itemNames: {
        ore: string,
        ingot: string,
        dust: string,
        molten: string,
        plate: string,
        enriched: string,
        pure: string,
        pellets: string
    },

    -- Icon tables (only the large icons, not the small ones in the corner)
    -- Add a string value with the type to let the icon generate with graphics from /graphics/icons/materials/
    icons: {
        ingot: IconData,
        dust: IconData,
        molten: IconData,
        plate: IconData,
        enriched: IconData,
        pure: IconData,
        pellets: IconData
    },

    -- Optional additional results from the enrichment processes
    additionalResults: {
        oreToPlate: array[ProductPrototype],
        dustToPlate: array[ProductPrototype],
        dustToIngot: array[ProductPrototype],
        dustToEnriched: array[ProductPrototype],
        dustToPure: array[ProductPrototype],
        pureToEnriched: array[ProductPrototype]
    }

    -- Optional additional ingredients (replaces the default ones)
    additionalIngredient: {
        -- Defaults to none
        dustToIngot: ProductPrototype

        -- Defaults to { type = "fluid", name = "sulfuric-acid", amount = 4 }
        dustToPure: ProductPrototype

        -- Defaults to nil
        enrichedToIngot: ProductPrototype

        -- Defaults to nil
        enrichedToPellets: ProductPrototype

        -- Defaults to { name = "quicklime", amount = 1 }
        pelletsToIngot: ProductPrototype
    }

    -- Technology name that unlocks the recipe
    unlockedBy: {
        oreToPlate,
        oreToDust,
        dustToPlate,
        dustToIngot,
        ingotToMolten,
        moltenToPlate,
        dustToEnriched,
        enrichedToIngot,
        dustToPure,
        pureToEnriched,
        enrichedToPellets,
        pelletsToIngot,
    }
}
--]]

atom.processing.util = {}
local processing = atom.processing.util

-- Should be called for every material after the config is created
-- @return The modified config (not a copy)
processing.prepareConfig = function(config)
    -- Finds entries in config.icons that have string values and generates IconData with icons from ATOM
    local function createDefaultIcons()
        local function createIcon(type)
            config.icons[type] = {
                icon = "__all-the-overhaul-modpack__/graphics/icons/materials/" .. config.name .. "-" .. type .. ".png",
                icon_size = 128
            }
        end

        for _, value in pairs(config.icons) do
            if type(value) == "string" then
                createIcon(value)
            end
        end
    end

    config.additionalResults = config.additionalResults or {}
    config.additionalIngredient = config.additionalIngredient or {}
    config.unlockedBy = config.unlockedBy or {}
    createDefaultIcons()

    return config
end

-- Call this for a material if the features of the config are sufficient
-- @return The instantiated factory (see factory.lua)
processing.createDefaultData = function(config)
    local create = atom.processing.create(config)
    data:extend({
        create.oreToPlateRecipe(),
        create.oreToDustRecipe(),
        create.dustToPlateRecipe(),
        create.dustToIngotRecipe(),
        create.ingotToPlateRecipe(),
        create.ingotToMoltenRecipe(),
        create.moltenToPlateRecipe(),
        create.dustToEnrichedRecipe(),
        create.enrichedToIngotRecipe(),
        create.dustToPureRecipe(),
        create.pureToEnrichedRecipe(),
        create.enrichedToPelletsRecipe(),
        create.pelletsToIngotRecipe(),
        create.item("dust"),
        create.item("pure"),
        create.item("pellets")
    })
    return create
end

-- Should be called for every material after the data is merged
processing.finalizeConfig = function(config)
    processing.setItemIcons(config)
    processing.setSubGroup(config)
    processing.setStackSizes(config)
end

-- Set the icons for the items
processing.setItemIcons = function(config)
    for type, itemName in pairs(config.itemNames) do
        local category = type == "molten" and "fluid" or "item"
        if config.icons[type] and data.raw[category][itemName] then
            local item = data.raw[category][itemName]
            local icon = config.icons[type]
            if item.icon then
                item.icon = icon.icon
                item.icon_size = icon.icon_size
                item.icon_mipmaps = icon.icon_mipmaps
            else
                item.icons = { config.icons[type] }
            end
        end
    end
end

-- Set the subgroup for the items
-- Creates a subgroup if it doesn't exist
processing.setSubGroup = function(config)
    if not data.raw["item-subgroup"][config.name] then
        data:extend({
            {
                type = "item-subgroup",
                name = config.name,
                group = "resources",
                order = "0-ore-" .. (config.order or "z")
            }
        })
    else
        data.raw["item-subgroup"][config.name].group = "resources"
        data.raw["item-subgroup"][config.name].order = "0-ore-" .. (config.order or "z")
    end
    for _, item in pairs(config.itemNames) do
        if (data.raw.item[item]) then
            data.raw.item[item].subgroup = config.name
        end
    end
end

-- Set default stack sizes
-- Dust and plate get 100, the rest 50
processing.setStackSizes = function(config)
    if atom.stage ~= "data" then
        return
    end
    for type, item in pairs(config.itemNames) do
        if data.raw.item[item] then
            if type == "dust" or type == "plate" then
                data.raw.item[item].stack_size = 100
            else
                data.raw.item[item].stack_size = 50
            end
        end
    end
end