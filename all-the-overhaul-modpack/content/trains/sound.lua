-- TODO: Revisit this

--data.raw.locomotive["locomotive"].working_sound.sound.volume = 0.25
local defaultWorkingSound = table.deepcopy(data.raw.locomotive["locomotive"].working_sound)

local function setDefaultSounds(loc, min, scaling)
    loc.working_sound = table.deepcopy(defaultWorkingSound)
    --loc.sound_minimum_speed = min or 0.5
    --loc.sound_scaling_ratio = scaling or 0.35
end

setDefaultSounds(data.raw.locomotive["el_diesel_train_entity"])
--setDefaultSounds(data.raw.locomotive["kr-nuclear-locomotive"], 0.25, 0.5)
--setDefaultSounds(data.raw.locomotive["gr_magnet_train_pre_entity"], 0.1, 0.25)
--setDefaultSounds(data.raw.locomotive["gr_magnet_train_entity"], 0.1, 0.15)