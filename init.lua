-- Boilerplate to support localized strings if intllib mod is installed.
local S
if (minetest.get_modpath("intllib")) then
  dofile(minetest.get_modpath("intllib").."/intllib.lua")
  S = intllib.Getter(minetest.get_current_modname())
else
  S = function ( s ) return s end
end

dofile(minetest.get_modpath(minetest.get_current_modname()).."/liquids.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/buckets.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/crafts.lua")
