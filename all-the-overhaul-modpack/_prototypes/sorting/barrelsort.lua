data:extend(
{
  {
    type = "item-group",
    name = "barreling",
    icon = "__all-the-overhaul-modpack__/graphics/group/barrels.png",
    icon_size = 128,
    inventory_order = "f",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "barreling",
    group = "barreling",
    order = "a"
  }
})

for _,fluid in pairs(data.raw.fluid) do
    if data.raw.recipe["empty-" .. fluid.name .. "-barrel"] then
        data.raw.recipe["empty-" .. fluid.name .. "-barrel"]["itemgroup"] = "barreling"
        data.raw.recipe["empty-" .. fluid.name .. "-barrel"]["subgroup"] = "barreling"

        data.raw.recipe["fill-" .. fluid.name .. "-barrel"]["itemgroup"] = "barreling"
        data.raw.recipe["fill-" .. fluid.name .. "-barrel"]["subgroup"] = "barreling"
    end
    if data.raw.item[fluid.name .. "-barrel"] then
      data.raw.item[fluid.name .. "-barrel"]["itemgroup"] = "barreling"
      data.raw.item[fluid.name .. "-barrel"]["subgroup"] = "barreling"

      data.raw.item[fluid.name .. "-barrel"]["itemgroup"] = "barreling"
      data.raw.item[fluid.name .. "-barrel"]["subgroup"] = "barreling"
  end
end
