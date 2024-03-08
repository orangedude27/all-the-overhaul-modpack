local util = require("_data-util")

-- Use atom-stone-dust instead of stone-crushed
util.find_and_replace_ingredients({ ["stone-crushed"] = "atom-stone-dust" })
util.find_and_replace_results({ ["stone-crushed"] = "atom-stone-dust" })
data.raw.item["stone-crushed"] = nil
-- Make the stone crusher from bio industries unattractive compared to the masher
data.raw.furnace["bi-stone-crusher"].energy_usage = "500kW"