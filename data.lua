local ducts = {
  ["pipe-to-ground"] = { "duct-underground" },
  ["pump"] = {
    "duct-end-point-intake",
    "duct-end-point-outtake",
    "non-return-duct",
  },
  ["storage-tank"] = {
    "duct-cross",
    "duct-curve",
    "duct-long",
    "duct-small",
    "duct-t-junction",
    "duct",
  },
}

local function allow_in_space(entity_map)
  for entity_type, entities in pairs(entity_map) do
    for i, entity in pairs(entities) do
      if data.raw[entity_type][entity] then
        data.raw[entity_type][entity].se_allow_in_space = true
      else
        log("[FLYTWEAKS] Warning: " .. entity_type .. " / " .. entity .. " doesnt exist")
      end
    end
  end
end

if mods["FluidMustFlow"] then
  allow_in_space(ducts)
end

-- MAX TTL, https://lua-api.factorio.com/latest/LuaEntity.html#LuaEntity.time_to_live
-- Keep corpses around
data.raw["character-corpse"]["character-corpse"].time_to_live = 4294967295

--- Increase distance for underground belts
data.raw["underground-belt"]["express-underground-belt"].max_distance = 14

--- Increase distance for underground pipes
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance = 14
data.raw["pipe-to-ground"]["se-space-pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance = 14
