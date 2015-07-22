base = {}

local DEBUG = false

minetest.register_on_mapgen_init(function(params)
	minetest.set_mapgen_params({
		mgname = "v7",
		seed = params.seed,
		water_level = 1,
		flags = "trees, caves, dungeons, mountains, ridges"
	})
end)

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

dofile(minetest.get_modpath(minetest.get_current_modname()).."/biomes.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/decorations.lua")
