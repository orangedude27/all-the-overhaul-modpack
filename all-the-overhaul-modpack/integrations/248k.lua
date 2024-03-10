-- Remove ingot refining techs
data.raw.technology["fu_gold_ingot_tech"] = nil
data.raw.technology["fu_lead_ingot_tech"] = nil
data.raw.technology["fu_titan_ingot_tech"] = nil
data.raw.technology["fu_neodym_ingot_tech"] = nil

-- Remove pure neodymium and fluid
atom.util.item.removeByName("fi_materials_pure_neodym")
atom.util.item.removeByName("fi_arc_neodym")