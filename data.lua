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
    for entity in pairs(entities) do
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
