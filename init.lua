moreliquids = rawget(_G, "moreliquids") or {}

-- Boilerplate to support localized strings if intllib mod is installed.
if (minetest.get_modpath("intllib")) then
  dofile(minetest.get_modpath("intllib").."/intllib.lua")
  moreliquids.getter = intllib.Getter(minetest.get_current_modname())
else
  moreliquids.getter = function ( s ) return s end
end

dofile(minetest.get_modpath(minetest.get_current_modname()).."/liquids.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/buckets.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/crafts.lua")
