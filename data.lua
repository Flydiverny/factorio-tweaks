local function create_tech(name, prereq)
  local train = data.raw["locomotive"]["locomotive"]
  local motorcar_tech = {
    type = "technology",
    name = "fly-motorcar-" .. name,
    icon_size = train.icon_size,
    icon = train.icon,
    prerequisites = {
      "railway-motor-car-base",
      prereq
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "railway-motor-car-" .. name
      },
    },
    unit = data.raw["technology"][prereq].unit,
    order = "c-a"
  }

  return motorcar_tech
end

data:extend {
  create_tech("crawler-locomotive", "angels-crawler-train"),
  create_tech("crawler-locomotive-2", "angels-crawler-train-2"),
  create_tech("crawler-locomotive-3", "angels-crawler-train-3"),
  create_tech("crawler-locomotive-4", "angels-crawler-train-4"),
  create_tech("petro-locomotive-1", "angels-petro-train"),
  create_tech("petro-locomotive-1-2", "angels-petro-train-2"),
  create_tech("petro-locomotive-1-3", "angels-petro-train-3"),
  create_tech("petro-locomotive-1-4", "angels-petro-train-4"),
  create_tech("smelting-locomotive-1", "angels-smelting-train"),
  create_tech("smelting-locomotive-1-2", "angels-smelting-train-2"),
  create_tech("smelting-locomotive-1-3", "angels-smelting-train-3"),
  create_tech("smelting-locomotive-1-4", "angels-smelting-train-4")
}

