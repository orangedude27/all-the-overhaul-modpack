local durability = 0
local speed = 0

function nextRepairPack(name)
    durability = durability + 200
    speed = speed + 2
    table.assign(data.raw["repair-tool"][name], {
        durability = durability,
        speed = speed,
        stack_size = 100
    })
end

nextRepairPack("repair-pack")
nextRepairPack("copper-repair-pack")
nextRepairPack("steel-repair-pack")
nextRepairPack("field-repair-pack")
nextRepairPack("multitool-repair-pack")

atom.util.log.debug(data.raw["repair-tool"])