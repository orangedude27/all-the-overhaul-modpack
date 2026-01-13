local gyroscope_name = data.raw.item["gyroscope"] and "gyroscope" or "gyro"

atom.util.Recipe("bio-magazine-ammo-rampant-arsenal").removeIngredient("piercing-rounds-magazine")
atom.util.Recipe("bio-magazine-ammo-rampant-arsenal").addIngredient("kr-armor-piercing-rifle-magazine", 1)
atom.util.Recipe("bio-magazine-ammo-rampant-arsenal").removeIngredient("copper-plate")
atom.util.Recipe("bio-magazine-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("bio-magazine-ammo-rampant-arsenal").addIngredient("zirconium-plate", 1)

atom.util.Recipe("he-magazine-ammo-rampant-arsenal").removeIngredient("piercing-rounds-magazine")
atom.util.Recipe("he-magazine-ammo-rampant-arsenal").addIngredient("kr-armor-piercing-rifle-magazine", 1)
atom.util.Recipe("he-magazine-ammo-rampant-arsenal").removeIngredient("copper-plate")
atom.util.Recipe("he-magazine-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("he-magazine-ammo-rampant-arsenal").addIngredient("zirconium-plate", 1)

atom.util.Recipe("incendiary-magazine-ammo-rampant-arsenal").removeIngredient("piercing-rounds-magazine")
atom.util.Recipe("incendiary-magazine-ammo-rampant-arsenal").addIngredient("kr-armor-piercing-rifle-magazine", 1)
atom.util.Recipe("incendiary-magazine-ammo-rampant-arsenal").removeIngredient("copper-plate")
atom.util.Recipe("incendiary-magazine-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("incendiary-magazine-ammo-rampant-arsenal").addIngredient("zirconium-plate", 1)

atom.util.Recipe("napalm-ammo-rampant-arsenal").removeIngredient("steel-plate")
atom.util.Recipe("napalm-ammo-rampant-arsenal").removeIngredient("copper-plate")
atom.util.Recipe("napalm-ammo-rampant-arsenal").addIngredient("airtight-seal", 1)
atom.util.Recipe("napalm-ammo-rampant-arsenal").addIngredient("invar-valve", 1)
atom.util.Recipe("napalm-ammo-rampant-arsenal").addIngredient("iron-plate", 5)
atom.util.Recipe("napalm-ammo-rampant-arsenal").addIngredient("invar-plate", 1)

atom.util.Recipe("bio-cannon-shell-ammo-rampant-arsenal").removeIngredient("iron-plate")
atom.util.Recipe("bio-cannon-shell-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("bio-cannon-shell-ammo-rampant-arsenal").addIngredient("tungsten-plate", 1)

atom.util.Recipe("he-cannon-shell-ammo-rampant-arsenal").removeIngredient("iron-plate")
atom.util.Recipe("he-cannon-shell-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("he-cannon-shell-ammo-rampant-arsenal").addIngredient("tungsten-plate", 1)

atom.util.Recipe("incendiary-cannon-shell-ammo-rampant-arsenal").removeIngredient("iron-plate")
atom.util.Recipe("incendiary-cannon-shell-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("incendiary-cannon-shell-ammo-rampant-arsenal").addIngredient("tungsten-plate", 1)

atom.util.Recipe("bio-rocket-ammo-rampant-arsenal").removeIngredient("steel-plate")
atom.util.Recipe("bio-rocket-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("bio-rocket-ammo-rampant-arsenal").addIngredient("tungsten-plate", 1)

atom.util.Recipe("he-rocket-ammo-rampant-arsenal").removeIngredient("steel-plate")
atom.util.Recipe("he-rocket-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("he-rocket-ammo-rampant-arsenal").addIngredient("tungsten-plate", 1)

atom.util.Recipe("incendiary-rocket-ammo-rampant-arsenal").removeIngredient("steel-plate")
atom.util.Recipe("incendiary-rocket-ammo-rampant-arsenal").addIngredient("titanium-plate", 1)
atom.util.Recipe("incendiary-rocket-ammo-rampant-arsenal").addIngredient("tungsten-plate", 1)

atom.util.Recipe("gun-item-rampant-arsenal").removeIngredient("steel-plate")
atom.util.Recipe("gun-item-rampant-arsenal").addIngredient("engine-unit", 5)
atom.util.Recipe("gunitem-rampant-arsenal").addIngredient("kr-steel-beam", 4)
atom.util.Recipe("gun-item-rampant-arsenal").addIngredient("kr-steel-gear-wheel", 4)
atom.util.Recipe("gun-item-rampant-arsenal").addIngredient("kr-steel-gear-wheel", 4)
atom.util.Recipe("gun-item-rampant-arsenal").addIngredient("cuw", 4)
atom.util.Recipe("gun-item-rampant-arsenal").addIngredient(gyroscope_name, 5)
atom.util.Recipe("gun-item-rampant-arsenal").addIngredient("motorized-articulator", 5)

atom.util.Recipe("shotgun-ammo-turret-rampant-arsenal").addIngredient("flywheel", 1)

atom.util.Recipe("gun-ammo-turret-rampant-arsenal").removeIngredient("engine-unit")
atom.util.Recipe("gun-ammo-turret-rampant-arsenal").removeIngredient("steel-plate")
atom.util.Recipe("gun-ammo-turret-rampant-arsenal").removeIngredient("plastic-bar")
atom.util.Recipe("acid-cannon-rampant-arsenal").addIngredient("spark-plug", 1)
atom.util.Recipe("acid-cannon-rampant-arsenal").addIngredient("engine-unit", 5)
atom.util.Recipe("acid-cannon-rampant-arsenal").addIngredient("steel-plate", 20)
atom.util.Recipe("acid-cannon-rampant-arsenal").addIngredient("cuw", 5)
atom.util.Recipe("acid-cannon-rampant-arsenal").addIngredient("invar-plate", 10)
atom.util.Recipe("acid-cannon-rampant-arsenal").addIngredient("lead-plate", 4)

atom.util.Recipe("lightning-item-rampant-arsenal").addIngredient("motorized-articulator", 5)
atom.util.Recipe("lightning-item-rampant-arsenal").addIngredient("ti-sapphire", 1)
atom.util.Recipe("lightning-item-rampant-arsenal").addIngredient(gyroscope_name, 5)

atom.util.Recipe("advanced-laser-item-rampant-arsenal").addIngredient(gyroscope_name, 5)

atom.util.Recipe("cannon-item-rampant-arsenal").addIngredient(gyroscope_name, 5)
atom.util.Recipe("cannon-item-rampant-arsenal").addIngredient("motorized-articulator", 5)

atom.util.Recipe("rapid-cannon-item-rampant-arsenal").addIngredient(gyroscope_name, 5)
atom.util.Recipe("rapid-cannon-item-rampant-arsenal").addIngredient("motorized-articulator", 5)

atom.util.Recipe("rocket-item-rampant-arsenal").addIngredient(gyroscope_name, 5)
atom.util.Recipe("rocket-item-rampant-arsenal").addIngredient("motorized-articulator", 5)

atom.util.Recipe("rapid-rocket-item-rampant-arsenal").addIngredient(gyroscope_name, 5)
atom.util.Recipe("rapid-rocket-item-rampant-arsenal").addIngredient("motorized-articulator", 5)

atom.util.Recipe("capsule-item-rampant-arsenal").addIngredient(gyroscope_name, 5)
atom.util.Recipe("capsule-item-rampant-arsenal").addIngredient("motorized-articulator", 5)

atom.util.Recipe("light-artillery-turret-gun-rampant-arsenal").addIngredient(gyroscope_name, 5)
atom.util.Recipe("light-artillery-turret-gun-rampant-arsenal").addIngredient("motorized-articulator", 5)

atom.util.Recipe("mending-wall-rampant-arsenal").removeIngredient("stone-wall")
atom.util.Recipe("mending-wall-rampant-arsenal").addIngredient("concrete-wall", 1)


-- hide technologies
if settings.startup["rampant-arsenal-hideVanillaDamageTechnologies"].value then
    local i = 1
    while i <= 18 do
        krastorio.technologies.disable("physical-projectile-damage-" .. i, true)
        krastorio.technologies.disable("laser-weapons-damage-" .. i, true)
        krastorio.technologies.disable("stronger-explosives-" .. i, true)
        i = i + 1
    end
end

local realistic = settings.startup["kr-realistic-weapons"].value
-- rampant-arsenal-technology-bullet-damage-
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-1", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.2 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.2 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.2 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-2", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.2 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.2 }or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.2 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-3", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.3 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.3 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.3 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-4", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.3 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.3 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.3 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-5", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.3 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.3 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.3 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-6", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "railgun-shell", modifier = 0.5 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.5 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.5 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-7", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "railgun-shell", modifier = 0.5 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.5 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.5 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-8", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "railgun-shell", modifier = 0.5 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.5 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.5 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-9", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "railgun-shell", modifier = 0.5 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.5 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.5 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-damage-10", {
    { type = "ammo-damage", ammo_category = "pistol-ammo", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "railgun-shell", modifier = 0.5 },
    realistic and { type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.5 } or nil,
    { type = "ammo-damage", ammo_category = "Bio_Turret_Ammo", modifier = 0.5 }
})

-- rampant-arsenal-technology-bullet-speed-
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-speed-1", {
    { type = "gun-speed", ammo_category = "pistol-ammo", modifier = 0.1 },
    realistic and { type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.1 } or nil,
    { type = "gun-speed", ammo_category = "Bio_Turret_Ammo", modifier = 0.1 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-speed-2", {
    { type = "gun-speed", ammo_category = "pistol-ammo", modifier = 0.2 },
    realistic and { type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.2 } or nil,
    { type = "gun-speed", ammo_category = "Bio_Turret_Ammo", modifier = 0.2 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-speed-3", {
    { type = "gun-speed", ammo_category = "pistol-ammo", modifier = 0.2 },
    realistic and { type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.2 } or nil,
    { type = "gun-speed", ammo_category = "Bio_Turret_Ammo", modifier = 0.2 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-speed-4", {
    { type = "gun-speed", ammo_category = "pistol-ammo", modifier = 0.3 },
    realistic and { type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.3 } or nil,
    { type = "gun-speed", ammo_category = "Bio_Turret_Ammo", modifier = 0.3 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-speed-5", {
    { type = "gun-speed", ammo_category = "pistol-ammo", modifier = 0.4 },
    realistic and { type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.4 } or nil,
    { type = "gun-speed", ammo_category = "Bio_Turret_Ammo", modifier = 0.4 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-speed-6", {
    { type = "gun-speed", ammo_category = "pistol-ammo", modifier = 0.4 },
    { type = "gun-speed", ammo_category = "railgun-shell", modifier = 0.4 },
    realistic and { type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.4 } or nil,
    { type = "gun-speed", ammo_category = "Bio_Turret_Ammo", modifier = 0.4 }
})
krastorio.technologies.addEffects("rampant-arsenal-technology-bullet-speed-7", {
    { type = "gun-speed", ammo_category = "pistol-ammo", modifier = 1 },
    { type = "gun-speed", ammo_category = "railgun-shell", modifier = 1 },
    realistic and { type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 1 } or nil,
    { type = "gun-speed", ammo_category = "Bio_Turret_Ammo", modifier = 1 }
})

-- rampant-arsenal-technology-laser-weapons-damage
krastorio.technologies.addEffects("rampant-arsenal-technology-laser-weapons-damage-5", {
    { type = "ammo-damage", ammo_category = "impulse-rifle", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "electric", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-laser-weapons-damage-6", {
    { type = "ammo-damage", ammo_category = "impulse-rifle", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "electric", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-laser-weapons-damage-7", {
    { type = "ammo-damage", ammo_category = "impulse-rifle", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "electric", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-laser-weapons-damage-8", {
    { type = "ammo-damage", ammo_category = "impulse-rifle", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "electric", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-laser-weapons-damage-9", {
    { type = "ammo-damage", ammo_category = "impulse-rifle", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "electric", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-laser-weapons-damage-10", {
    { type = "ammo-damage", ammo_category = "impulse-rifle", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "electric", modifier = 0.5 },
})

-- rampant-arsenal-technology-rocket-damage
krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-damage-6", {
    { type = "ammo-damage", ammo_category = "missiles-for-turrets", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "heavy-rocket", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-damage-7", {
    { type = "ammo-damage", ammo_category = "missiles-for-turrets", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "heavy-rocket", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-damage-8", {
    { type = "ammo-damage", ammo_category = "missiles-for-turrets", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "heavy-rocket", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-damage-9", {
    { type = "ammo-damage", ammo_category = "missiles-for-turrets", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "heavy-rocket", modifier = 0.5 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-damage-10", {
    { type = "ammo-damage", ammo_category = "missiles-for-turrets", modifier = 0.5 },
    { type = "ammo-damage", ammo_category = "heavy-rocket", modifier = 0.5 },
})

-- rampant-arsenal-technology-rocket-speed-
krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-speed-6", {
    { type = "gun-speed", ammo_category = "missiles-for-turrets", modifier = 0.6 },
    { type = "gun-speed", ammo_category = "heavy-rocket", modifier = 0.6 },
})
krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-speed-7", {
    { type = "gun-speed", ammo_category = "missiles-for-turrets", modifier = 1 },
    { type = "gun-speed", ammo_category = "heavy-rocket", modifier = 1 },
})

if mods["heroturrets"] then
    -- kr-railgun-turret
    for i = 0, 4 do
        local turret_name
        if i == 0 then
            turret_name = "kr-railgun-turret"
        else
            turret_name = "hero-turret-" .. i .. "-for-kr-railgun-turret"
        end
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-6", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.4 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-7", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-8", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-9", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-10", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
    end

    -- dart-turret
    for i = 0, 4 do
        local turret_name
        if i == 0 then
            turret_name = "bi-dart-turret"
        else
            turret_name = "hero-turret-" .. i .. "-for-bi-dart-turret"
        end
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-1", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.1 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-2", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.1 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-3", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.2 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-4", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.3 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-5", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.4 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-6", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.4 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-7", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-8", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-9", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-gun-turret-damage-10", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.8 },
        })
    end

    -- flamethrower-turret
    if mods["heroturrets"] then
        for i = 1, 4 do
            for j = 1, 18 do
                krastorio.technologies.addEffects("refined-flammables-" .. j, {
                    {
                        type = "turret-attack",
                        turret_id = "hero-turret-" .. i .. "-for-flamethrower-turret",
                        modifier = 0.2
                    }
                })
            end
        end
    end

    -- acid-cannon-rampant-arsenal
    for i = 0, 4 do
        local turret_name
        if i == 0 then
            turret_name = "acid-cannon-rampant-arsenal"
        else
            turret_name = "hero-turret-" .. i .. "-for-acid-cannon-rampant-arsenal"
        end
        for j = 1, 18 do
            krastorio.technologies.addEffects("refined-flammables-" .. j, {
                {
                    type = "turret-attack",
                    turret_id = turret_name,
                    modifier = 0.2
                }
            })
        end
    end

    -- kr-rocket-turret
    for i = 0, 4 do
        local turret_name
        if i == 0 then
            turret_name = "kr-rocket-turret"
        else
            turret_name = "hero-turret-" .. i .. "-for-kr-rocket-turret"
        end
        krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-turret-damage-6", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.4 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-turret-damage-7", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-turret-damage-8", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-turret-damage-9", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-rocket-turret-damage-10", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
    end

    -- lite-artillery-turret-rampant-arsenal
    for i = 0, 4 do
        local turret_name
        if i == 0 then
            turret_name = "lite-artillery-turret-rampant-arsenal"
        else
            turret_name = "hero-turret-" .. i .. "-for-lite-artillery-turret-rampant-arsenal"
        end
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-1", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.1 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-2", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.1 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-3", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.2 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-4", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.2 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-5", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.3 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-6", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.3 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-7", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-8", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-9", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
        krastorio.technologies.addEffects("rampant-arsenal-technology-capsule-turret-damage-10", {
            { type = "turret-attack", turret_id = turret_name, modifier = 0.5 },
        })
    end

    -- artillery-turret
    for i = 0, 4 do
        local turret_name
        if i == 0 then
            turret_name = "lite-artillery-turret-rampant-arsenal"
        else
            turret_name = "hero-turret-" .. i .. "-for-lite-artillery-turret-rampant-arsenal"
        end
        for j = 1, 6 do
            krastorio.technologies.addEffects("rampant-arsenal-technology-artillery-turret-damage-" .. j, {
                { type = "turret-attack", turret_id = turret_name, modifier = 0.4 },
            })
        end
    end
end
