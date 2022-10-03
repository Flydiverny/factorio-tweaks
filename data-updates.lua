data.raw["item"]["storage-tank"].stack_size = 50

if mods["StorageTank2"] then
  data.raw["item"]["storage-tank2"].stack_size = 50
end

if mods["miniloader"] then
  data.raw.technology["express-miniloader"].unit = {
    count = 300,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"se-rocket-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 30
  }
end

if mods["deadlock-beltboxes-loaders"] then
  data.raw.technology["deadlock-stacking-3"].unit = {
    count = 450,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"se-rocket-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 30
  }
end

-- if mods["cargo-ships"] then
--   -- data.raw.recipe['railway-motor-car-cargo_ship_engine'].enabled = false
--   -- data.raw.recipe['railway-motor-car-boat_engine'].enabled = false
-- end

