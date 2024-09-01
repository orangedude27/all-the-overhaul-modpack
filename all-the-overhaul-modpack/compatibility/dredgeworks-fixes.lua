if (mods["dredgeworks"]) then
    -- Re-add ingredients removed by K2/SE
    local mk3Tech = atom.util.Technology("floating-drill-mk3-technology")
    mk3Tech.addIngredient("automation-science-pack")
    mk3Tech.addIngredient("logistic-science-pack")
end