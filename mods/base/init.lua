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

dofile(minetest.get_modpath(minetest.get_current_modname()).."/biomes.lua")
