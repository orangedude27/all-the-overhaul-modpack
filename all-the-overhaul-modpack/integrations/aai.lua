local areaDrill = atom.util.Recipe("area-mining-drill")
areaDrill.replaceIngredient("kr-electric-mining-drill-mk2", "kr-electric-mining-drill-mk3", 1)
areaDrill.replaceIngredient("advanced-gearbox", "elite-gearbox", 4)
areaDrill.replaceIngredient("processing-unit", "advanced-processing-unit", 5)
areaDrill.replaceIngredient("motorized-articulator", "advanced-machining-tool", 10)
areaDrill.addIngredient("se-aeroframe-pole", 5)

-- Balance motor
atom.util.Recipe("motor").replaceIngredient("aluminum-plate", 2)

-- Balance toolbelt
for i = 1, 6 do
    local name = i == 1 and "toolbelt" or "toolbelt-" .. i
    data.raw.technology[name].effects[1].modifier = 10
end