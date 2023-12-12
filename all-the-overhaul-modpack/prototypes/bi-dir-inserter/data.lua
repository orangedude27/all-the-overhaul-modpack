--Add new items

local bi_dir_inserter_item = flib.copy_prototype(data.raw.item["inserter"], "bi_dir_inserter")
bi_dir_inserter_item.icon = "__base__/graphics/icons/inserter.png"
bi_dir_inserter_item.icon_size = 64
bi_dir_inserter_item.icon_mipmaps = 1
bi_dir_inserter_item.order = "a[inserter]a[stack-inserter]-c[bi_dir_inserter]"

local bi_dir_arm_item = flib.copy_prototype(data.raw.item["inserter"],"logistic-train-stop-lamp-control")
bi_dir_arm_item.flags = {"hidden"}
bi_dir_arm_item.icon = "__all-the-overhaul-modpack__/graphics/icons/empty.png"
bi_dir_arm_item.icon_size = 32
bi_dir_arm_item.icon_mipmaps = nil

local bi_dir_inserter_entity = flib.copy_prototype(data.raw.inserter["inserter"], "bi_dir_inserter")

bi_dir_inserter_entity.minable.result = "bi_dir_inserter"
bi_dir_inserter_entity.icon = "__base__/graphics/icons/inserter.png"
bi_dir_inserter_entity.icon_size = 64
bi_dir_inserter_entity.icon_mipmaps = 1
bi_dir_inserter_entity.place_result = "bi_dir_inserter"

local bi_dir_arm_entity = flib.copy_prototype(data.raw.inserter["inserter"], "bi_dir_arm")

bi_dir_arm_entity.icon = "__all-the-overhaul-modpack__/graphics/icons/empty.png"
bi_dir_arm_entity.icon_size = 32
bi_dir_arm_entity.icon_mipmaps = nil
bi_dir_arm_entity.next_upgrade = nil
bi_dir_arm_entity.minable = nil
bi_dir_arm_entity.collision_mask = {}
bi_dir_arm_entity.flags = { "not-blueprintable", "not-deconstructable", "placeable-off-grid"}
bi_dir_arm_entity.selectable_in_game = false

--bi_dir_arm.hand_base_picture.tint.a = 0.5
--bi_dir_arm.hand_closed_picture.tint.a = 0.5
--bi_dir_arm.hand_open_picture.tint.a = 0.5
bi_dir_arm_entity.hand_base_shadow =
{
  filename = "__all-the-overhaul-modpack__/graphics/icons/empty.png",
  priority = "extra-high",
  width = 1,
  height = 1,
  frame_count = 1,
  shift = { 0.0, 0.0 },
}
bi_dir_arm_entity.hand_closed_shadow =
{
  filename = "__all-the-overhaul-modpack__/graphics/icons/empty.png",
  priority = "extra-high",
  width = 1,
  height = 1,
  frame_count = 1,
  shift = { 0.0, 0.0 },
}
bi_dir_arm_entity.hand_open_shadow =
{
  filename = "__all-the-overhaul-modpack__/graphics/icons/empty.png",
  priority = "extra-high",
  width = 1,
  height = 1,
  frame_count = 1,
  shift = { 0.0, 0.0 },
}
bi_dir_arm_entity.platform_picture =
{
  sheet =
  {
    filename = "__all-the-overhaul-modpack__/graphics/icons/empty.png",
    priority = "extra-high",
    width = 1,
    height = 1,
    frame_count = 1,
    shift = { 0.0, 0.0 },
  }
}

local bi_dir_inserter_recipe = flib.copy_prototype(data.raw.recipe["inserter"], "bi_dir_inserter")
bi_dir_inserter_recipe.enabled = true
bi_dir_inserter_recipe.ingredients = {
  { "inserter",           2 },
  { "electronic-circuit", 2 },
}

data:extend({
  bi_dir_inserter_item,
  bi_dir_inserter_entity,
  bi_dir_inserter_recipe,
  bi_dir_arm_item,
  bi_dir_arm_entity,
})
