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

if mods["space-exploration"] then
  data.raw["underground-belt"]["se-space-underground-belt"].max_distance = data.raw["underground-belt"]["express-underground-belt"].max_distance
  data.raw["pipe-to-ground"]["se-space-pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance =
    data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance
end

if mods["se-space-trains"] then
  data.raw["fluid-wagon"]["space-fluid-wagon"].capacity = 100000

  data.raw["fluid-wagon"]["space-fluid-wagon"].weight = 3906
  -- data.raw["fluid-wagon"]["space-fluid-wagon"].air_resistance = 0.0005
  data.raw["fluid-wagon"]["space-fluid-wagon"].max_speed = 2.65
  -- data.raw["fluid-wagon"]["space-fluid-wagon"].friction_force = 0.30

  data.raw["cargo-wagon"]["space-cargo-wagon"].weight = 3906
  -- data.raw["cargo-wagon"]["space-cargo-wagon"].air_resistance = 0.0005
  data.raw["cargo-wagon"]["space-cargo-wagon"].max_speed = 2.65
  -- data.raw["cargo-wagon"]["space-cargo-wagon"].friction_force = 0.30

  data.raw["locomotive"]["space-locomotive"].weight = 5859
  -- data.raw["locomotive"]["space-locomotive"].air_resistance = 0.0005
  data.raw["locomotive"]["space-locomotive"].max_speed = 2.65
  -- data.raw["locomotive"]["space-locomotive"].friction_force = 0.30
end
