local flib = require "__flib__.data-util"

function getTableKeys(tab)
  local keyset = {}
  for k,v in pairs(tab) do
    keyset[#keyset + 1] = k
  end
  return keyset
end

local function create_tech(name, prereq)
  local train = data.raw["locomotive"]["locomotive"]

  if not data.raw["item"]["railway-motor-car-" .. name] then
    return nil
  end

  local motorcar_tech = {
    type = "technology",
    name = data.raw["item"]["railway-motor-car-" .. name].name,
    localised_name = data.raw["item"]["railway-motor-car-" .. name].localised_name,
    icons = flib.create_icons(
      data.raw["virtual-signal"]["signal-dot"],
      data.raw["item"]["railway-motor-car-" .. name].icons or { data.raw["item"]["railway-motor-car-" .. name].icon }
    ),
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
