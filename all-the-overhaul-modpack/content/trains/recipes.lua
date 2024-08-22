local wagon2 = atom.util.Recipe("black-cargo-wagon")
wagon2.addIngredient("tantalum-titanium-beam", 10)
wagon2.replaceIngredient("iron-plate", "aluminum-2219")
wagon2.replaceIngredient("iron-gear-wheel", "steel-gear-wheel")
wagon2.prototype.energy_required = 40

local fluid2 = atom.util.Recipe("black-fluid-wagon")
fluid2.addIngredient("tantalum-titanium-beam", 10)
fluid2.replaceIngredient("steel-plate", "galvanized-steel-plate")
fluid2.replaceIngredient("fluid-wagon", 2)
fluid2.prototype.energy_required = 40