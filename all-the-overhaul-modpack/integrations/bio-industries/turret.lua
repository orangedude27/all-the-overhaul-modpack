-- Entities

local turret = data.raw["ammo-turret"]["bi-dart-turret"]
turret.attack_parameters.cooldown = 7.5
turret.attack_parameters.range = 15

local ammo1 = data.raw["ammo"]["bi-dart-magazine-basic"]
ammo1.magazine_size = 20
ammo1.ammo_type.action.action_delivery.target_effects[2].damage.amount = 6

local ammo2 = data.raw["ammo"]["bi-dart-magazine-standard"]
ammo2.magazine_size = 20
ammo2.ammo_type.action.action_delivery.target_effects[2].damage.amount = 6
ammo2.ammo_type.action.action_delivery.target_effects[3].damage.amount = 2

local ammo3 = data.raw["ammo"]["bi-dart-magazine-enhanced"]
ammo3.magazine_size = 20
ammo3.ammo_type.action.action_delivery.target_effects[2].damage.amount = 6
ammo3.ammo_type.action.action_delivery.target_effects[3].damage.amount = 2
ammo3.ammo_type.action.action_delivery.target_effects[4].damage.amount = 2

local ammo4 = data.raw["ammo"]["bi-dart-magazine-poison"]
ammo4.magazine_size = 20
ammo4.ammo_type.action.action_delivery.target_effects[2].damage.amount = 6
ammo4.ammo_type.action.action_delivery.target_effects[3].damage.amount = 2
ammo4.ammo_type.action.action_delivery.target_effects[4].damage.amount = 2
ammo4.ammo_type.action.action_delivery.target_effects[5].damage.amount = 2


-- Recipes

local turretRecipe = atom.util.Recipe("bi-dart-turret")
turretRecipe.replaceIngredient("wood", 10)

local recipe1 = atom.util.Recipe("bi-dart-magazine-basic")
recipe1.replaceIngredient("wood", 4)

local recipe2 = atom.util.Recipe("bi-dart-magazine-standard")
recipe2.replaceIngredient("copper-plate", 4)

local recipe3 = atom.util.Recipe("bi-dart-magazine-enhanced")
recipe3.replaceIngredient("plastic-bar", "bakelite", 4)

local recipe4 = atom.util.Recipe("bi-dart-magazine-poison")
recipe4.replaceIngredient("poison-capsule", "ferric-chloride", 4)
recipe4.unlockedByTechnology("military-2")


-- Technologies

atom.util.Technology("military-2").removeRecipe("bi-dart-magazine-enhanced")
atom.util.Technology("military-3").removeRecipe("bi-dart-magazine-poison")

local tech3 = {
    type = "technology",
    name = "bi-dart-magazine-enhanced",
    icon = "__Bio_Industries__/graphics/icons/enhanced_dart_icon.png",
    icon_size = 64,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bi-dart-magazine-enhanced"
        }
    },
    prerequisites = { "bakelite" },
    unit = {
        count = 10,
        ingredients = {
            { "basic-tech-card", 1 },
            { "automation-science-pack", 1 }
        },
        time = 20
    },
    order = "a-d-a"
}
data:extend({ tech3 })

-- Damage upgrade count for dart ammo (was removed by SE)
local turretDamageBonus = { 0.2, 0.2, 0.2, 0.2, 0.3, 0.3, 0.3, 0.3, 0.4, 0.4, 0.4, 0.4, 0.5, 0.5, 0.5, 0.5, 0.6, 0.6 }
for i = 1, 18 do
    table.insert(
            data.raw.technology["physical-projectile-damage-" .. i].effects,
            { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = turretDamageBonus[i] }
    )
end