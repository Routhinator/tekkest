--
-- Average Temp
--

minetest.register_biome({
	name = "base_forest",

	node_top       = "default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 3,
	node_dust      = "air",

	height_min     = 1,
	height_max     = 100,
	heat_point     = 50,
	humidity_point = 40,
})

minetest.register_biome({
	name = "base_ocean_forest",

	node_top       = "default:sand",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	node_water     = "default:water_source",
	node_dust_water= "default:water_source",

	height_min     = -31000,
	height_max     = 1,
	heat_point     = 50,
	humidity_point = 40,
})

minetest.register_biome({
	name = "base_grass_dry",

	node_top       = "default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 3,
	node_dust      = "air",

	height_min     = 1,
	height_max     = 100,
	heat_point     = 50,
	humidity_point = 0,
})

minetest.register_biome({
	name = "base_ocean_grass_dry",

	node_top       = "default:dirt",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	node_water     = "default:water_source",
	node_dust_water= "default:water_source",

	height_min     = -31000,
	height_max     = 1,
	heat_point     = 50,
	humidity_point = 0,
})

minetest.register_biome({
	name = "base_grass_wet",

	node_top       = "default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 3,
	node_dust      = "air",

	height_min     = 1,
	height_max     = 100,
	heat_point     = 50,
	humidity_point = 80,
})

minetest.register_biome({
	name = "base_ocean_grass_wet",

	node_top       = "default:sand",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	node_water     = "default:water_source",
	node_dust_water= "default:water_source",

	height_min     = -31000,
	height_max     = 1,
	heat_point     = 50,
	humidity_point = 80,
})

--
-- Low temp
--

minetest.register_biome({
	name = "base_tundra",

	node_top       = "default:snowblock",
	depth_top      = 2,
	node_filler    = "default:dirt",
	depth_filler   = 3,
	node_dust      = "air",

	height_min     = 1,
	height_max     = 100,
	heat_point     = 10,
	humidity_point = 0,
})

minetest.register_biome({
	name = "base_ocean_tundra",

	node_top       = "default:dirt_with_snow",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	node_water     = "default:ice",
	node_dust_water= "default:ice",

	height_min     = -10,
	height_max     = 1,
	heat_point     = 10,
	humidity_point = 0,
})

minetest.register_biome({
	name = "base_taiga",

	node_top       = "default:dirt_with_snow",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 3,
	node_dust      = "air",

	height_min     = 1,
	height_max     = 100,
	heat_point     = 10,
	humidity_point = 40,
})

minetest.register_biome({
	name = "base_ocean_taiga",

	node_top       = "default:dirt",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	node_water     = "default:water_source",
	node_dust_water= "default:ice",

	height_min     = -31000,
	height_max     = 1,
	heat_point     = 10,
	humidity_point = 40,
})

--
-- High Temp
--

minetest.register_biome({
	name = "base_desert",

	node_top       = "default:desert_sand",
	depth_top      = 5,
	node_filler    = "default:desert_stone",
	depth_filler   = 0,
	node_dust      = "air",

	height_min     = 1,
	height_max     = 100,
	heat_point     = 90,
	humidity_point = 0,
})

minetest.register_biome({
	name = "base_ocean_desert",

	node_top       = "default:desert_sand",
	depth_top      = 5,
	node_filler    = "default:desert_stone",
	depth_filler   = 0,
	node_water     = "default:water_source",
	node_dust_water= "default:water_source",

	height_min     = -31000,
	height_max     = 1,
	heat_point     = 90,
	humidity_point = 0,
})

minetest.register_biome({
	name = "base_jungle",

	node_top       = "default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 3,
	node_dust      = "air",

	height_min     = 1,
	height_max     = 100,
	heat_point     = 90,
	humidity_point = 80,
})

minetest.register_biome({
	name = "base_ocean_jungle",

	node_top       = "default:sand",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	node_water     = "default:water_source",
	node_dust_water= "default:water_source",

	height_min     = -31000,
	height_max     = 1,
	heat_point     = 90,
	humidity_point = 80,
})


minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:birch_sapling_ongen",
	place_on = "default:dirt_with_grass",
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"base_grass_wet"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "default:papyrus",
	place_on = "default:dirt_with_grass",
	height = 1,
	height_max = 4,
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"base_grass_wet"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:birch_sapling_ongen",
	place_on = "default:dirt_with_grass",
	height = 1,
	height_max = 0,
	sidelen = 8,
	fill_ratio = 0.03,
	biomes = {"base_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:fir_sapling_ongen",
	place_on = "default:dirt_with_snow",
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_taiga"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:spruce_sapling_ongen",
	place_on = "default:dirt_with_snow",
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_taiga"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:jungletree_sapling_ongen",
	place_on = "default:dirt_with_grass",
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.06,
	biomes = {"base_jungle"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "default:junglegrass",
	place_on = "default:dirt_with_grass",
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"base_jungle"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "default:dry_shrub",
	place_on = "default:desert_sand",
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"base_desert"}
})


minetest.register_decoration({
	deco_type = "simple",
	decoration = "default:cactus",
	place_on = "default:desert_sand",
	height = 1,
	height_max = 4,
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"base_desert"}
})
