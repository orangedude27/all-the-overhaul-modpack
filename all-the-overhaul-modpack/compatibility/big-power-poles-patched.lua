if mods["big_power_poles_patched"] then
    local recipe = atom.util.Recipe("bp_extreme_power_pole")
    recipe.removeIngredient("copper-plate")
    recipe.removeIngredient("steel-plate")
    recipe.addIngredient("acsr-cable", 4)
    recipe.addIngredient("iron-stick", 16)
    recipe.addIngredient("galvanized-steel-plate", 8)
    recipe.addIngredient("lead-plate", 4)
    recipe.addIngredient("concrete", 2)
end