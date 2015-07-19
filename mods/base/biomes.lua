--
-- Cool Temp
--

minetest.register_biome({
	name = "base_stone_grassland",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 0,
	y_min = 6,
	y_max = 32000,
	heat_point = 45,
	humidity_point = 20,
})

minetest.register_biome({
	name = "base_stone_grassland_ocean",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	y_min = -192,
	y_max = 5,
	heat_point = 45,
	humidity_point = 20,
})

minetest.register_biome({
	name = "base_coniferous_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	y_min = 6,
	y_max = 32000,
	heat_point = 45,
	humidity_point = 80,
})

minetest.register_biome({
	name = "base_coniferous_forest_ocean",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	y_min = -192,
	y_max = 5,
	heat_point = 45,
	humidity_point = 80,
})

-- Warm temp

minetest.register_biome({
	name = "base_birch_forest",

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
	name = "base_birch_forest_ocean",

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
	height_min     = 6,
	height_max     = 3200,
	heat_point     = 70,
	humidity_point = 20,
})

minetest.register_biome({
	name = "base_grass_dry_ocean",
	node_top       = "default:dirt",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	height_min     = -31000,
	height_max     = 5,
	heat_point     = 70,
	humidity_point = 20,
})

minetest.register_biome({
	name = "base_grass_wet",
	node_top       = "default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 3,
	height_min     = 6,
	height_max     = 100,
	heat_point     = 70,
	humidity_point = 80,
})

minetest.register_biome({
	name = "base_grass_wet_ocean",
	node_top       = "default:sand",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	y_min          = -31000,
	y_max          = 5,
	heat_point     = 70,
	humidity_point = 80,
})

-- Cold Temp

minetest.register_biome({
	name = "base_glacier",
	node_dust = "default:snowblock",
	node_top = "default:snowblock",
	depth_top = 1,
	node_filler = "default:snowblock",
	depth_filler = 3,
	node_stone = "default:ice",
	node_water_top = "default:ice",
	depth_water_top = 8,

	y_min = -6,
	y_max = 32000,
	heat_point = -5,
	humidity_point = 50,
})

minetest.register_biome({
	name = "base_glacial_ocean",
	node_dust = "default:snowblock",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,

	y_min = -31000,
	y_max = -7,
	heat_point = -5,
	humidity_point = 50,
})

minetest.register_biome({
	name = "base_tundra",

	node_top       = "default:dirt_with_snow",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	node_dust      = "default:snow",

	y_min          = 2,
	y_max          = 32000,
	heat_point     = 20,
	humidity_point = 20,
})

minetest.register_biome({
	name = "base_tundra_ocean",

	node_top       = "default:dirt_with_snow",
	depth_top      = 5,
	node_filler    = "default:stone",
	depth_filler   = 0,
	node_water_top = "default:ice",
	depth_water_top = 2,

	y_min     		 = -31000,
	y_max          = 1,
	heat_point     = 20,
	humidity_point = 20,
})

minetest.register_biome({
	name = "base_taiga",

	node_top       = "default:snowblock",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 2,
	node_dust      = "default:snow",

	y_min          = 2,
	y_max          = 32000,
	heat_point     = 20,
	humidity_point = 80,
})

minetest.register_biome({
	name = "base_taiga_ocean",
	node_top       = "default:dirt",
	depth_top      = 1,
	node_filler    = "default:stone",
	depth_filler   = 2,
  node_water_top = "default:ice",
  depth_water_top = 1,

	height_min     = -31000,
	height_max     = 1,
	heat_point     = 20,
	humidity_point = 80,
})

-- Hot temp

minetest.register_biome({
	name = "base_desert",
	node_top       = "default:desert_sand",
	depth_top      = 1,
	node_filler    = "default:desert_sand",
	depth_filler   = 1,
	node_stone     = "default:desert_stone",
	y_min          = 1,
	y_max          = 32000,
	heat_point     = 95,
	humidity_point = 10,
})

minetest.register_biome({
	name = "base_desert_ocean",
	node_top       = "default:desert_sand",
	depth_top      = 1,
	node_filler    = "default:desert_sand",
	depth_filler   = 2,
	node_stone     = "default:desert_stone",
	y_min          = -31000,
	y_max          = 0,
	heat_point     = 90,
	humidity_point = 10,
})

minetest.register_biome({
	name = "base_jungle",
	node_top       = "default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 2,
	y_min          = 1,
	y_max          = 32000,
	heat_point     = 95,
	humidity_point = 90,
})

minetest.register_biome({
	name = "base_jungle_swamp",
	node_top = "default:dirt",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	y_min = -1,
	y_max = 0,
	heat_point = 95,
	humidity_point = 90,
})

minetest.register_biome({
	name = "base_jungle_ocean",
	node_top       = "default:sand",
	depth_top      = 1,
	node_filler    = "default:sand",
	depth_filler   = 2,
	y_min          = -31000,
	y_max          = -2,
	heat_point     = 95,
	humidity_point = 90,
})

minetest.register_biome({
	name = "base_savanna",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	y_min = 5,
	y_max = 32000,
	heat_point = 95,
	humidity_point = 50,
})

minetest.register_biome({
	name = "base_savanna_ocean",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	y_min = -31000,
	y_max = 4,
	heat_point = 95,
	humidity_point = 50,
})

-- Underground

minetest.register_biome({
	name = "base_underground",
	depth_top = 0,
	depth_filler = -4,
	y_min = -32000,
	y_max = -193,
	heat_point = 50,
	humidity_point = 50,
})
