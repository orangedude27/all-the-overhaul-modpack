-- Fix stack size tooltips
if mods["Bio_Industries"] then
    data.raw["ammo"]["bi-dart-magazine-basic"].stack_size = 200
    data.raw["ammo"]["bi-dart-magazine-standard"].stack_size = 200
    data.raw["ammo"]["bi-dart-magazine-enhanced"].stack_size = 200
    data.raw["ammo"]["bi-dart-magazine-poison"].stack_size = 200
end