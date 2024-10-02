if settings.startup["brimstuff-waste-treatment"].value then
    -- Change subgroup for nodule scrapping
    data.raw.recipe["nodule-scrapping"].subgroup = "recycle"
end