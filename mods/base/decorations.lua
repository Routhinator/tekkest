-- Trees

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:birch_sapling_ongen",
	place_on = "default:dirt_with_grass",
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.001,
	biomes = {"base_deciduous_forest", "base_grass_wet"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:birch_sapling_ongen",
	place_on = "default:dirt_with_grass",
	height = 1,
	height_max = 0,
	sidelen = 8,
	fill_ratio = 0.03,
	biomes = {"base_birch_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:fir_sapling_ongen",
	place_on = {"default:snowblock", "default:dirt_with_grass", "default:dirt_with_snow"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_taiga", "base_coniferous_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:spruce_sapling_ongen",
	place_on = {"default:snowblock", "default:dirt_with_grass", "default:dirt_with_snow"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_taiga", "base_coniferous_forest"}
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
	decoration = "moretrees:acacia_sapling_ongen",
	place_on = {"default:dirt_with_dry_grass", "default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 80,
	fill_ratio = 0.001,
	biomes = {"base_savanna"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:sequoia_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_coniferous_forest", "base_redwood_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:pine_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_coniferous_forest", "base_pine_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:oak_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_deciduous_forest", "base_oak_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:apple_tree_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.001,
	biomes = {"base_deciduous_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:willow_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.001,
	biomes = {"base_deciduous_forest"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:apple_tree_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_wild_orchard"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:rubber_tree_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_jungle_swamp"}
})

minetest.register_decoration({
	deco_type = "simple",
	decoration = "moretrees:willow_sapling_ongen",
	place_on = {"default:dirt_with_grass"},
	height = 1,
	height_max = 0,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"base_jungle_swamp"}
})

-- Flowers

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.02,
		scale = 0.03,
		spread = {x=200, y=200, z=200},
		seed = 436,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_stone_grassland", "base_sandstone_grassland"},
	y_min = 6,
	y_max = 31000,
	decoration = "flowers:rose",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.02,
		scale = 0.03,
		spread = {x=200, y=200, z=200},
		seed = 19822,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_stone_grassland", "base_sandstone_grassland"},
	y_min = 6,
	y_max = 31000,
	decoration = "flowers:tulip",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.02,
		scale = 0.03,
		spread = {x=200, y=200, z=200},
		seed = 1220999,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_stone_grassland", "base_sandstone_grassland"},
	y_min = 6,
	y_max = 31000,
	decoration = "flowers:dandelion_yellow",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.02,
		scale = 0.03,
		spread = {x=200, y=200, z=200},
		seed = 36662,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_deciduous_forest", "base_coniferous_forest"},
	y_min = 6,
	y_max = 31000,
	decoration = "flowers:geranium",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.02,
		scale = 0.03,
		spread = {x=200, y=200, z=200},
		seed = 1133,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"base_stone_grassland",
		"base_sandstone_grassland",
		"base_deciduous_forest",
		"base_coniferous_forest"
	},
	y_min = 6,
	y_max = 31000,
	decoration = "flowers:viola",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.02,
		scale = 0.03,
		spread = {x=200, y=200, z=200},
		seed = 73133,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_stone_grassland", "base_sandstone_grassland"},
	y_min = 6,
	y_max = 31000,
	decoration = "flowers:dandelion_white",
})

-- Grasses

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.03,
		scale = 0.09,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"base_stone_grassland", "base_stone_grassland_ocean",
		"base_sandstone_grassland", "base_sandstone_grassland_ocean",
		"base_deciduous_forest", "base_deciduous_forest_ocean",
		"base_coniferous_forest", "base_coniferous_forest_ocean",
	},
	y_min = 5,
	y_max = 31000,
	decoration = "default:grass_5",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.015,
		scale = 0.075,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"base_stone_grassland", "base_stone_grassland_ocean",
		"base_sandstone_grassland", "base_sandstone_grassland_ocean",
		"base_deciduous_forest", "base_deciduous_forest_ocean",
		"base_coniferous_forest", "base_coniferous_forest_ocean",
	},
	y_min = 5,
	y_max = 31000,
	decoration = "default:grass_4",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.06,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"base_stone_grassland", "base_stone_grassland_ocean",
		"base_sandstone_grassland", "base_sandstone_grassland_ocean",
		"base_deciduous_forest", "base_deciduous_forest_ocean",
		"base_coniferous_forest", "base_coniferous_forest_ocean",
	},
	y_min = 5,
	y_max = 31000,
	decoration = "default:grass_3",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = 0.015,
		scale = 0.045,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"base_stone_grassland", "base_stone_grassland_ocean",
		"base_sandstone_grassland", "base_sandstone_grassland_ocean",
		"base_deciduous_forest", "base_deciduous_forest_ocean",
		"base_coniferous_forest", "base_coniferous_forest_ocean",
	},
	y_min = 5,
	y_max = 31000,
	decoration = "default:grass_2",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = 0.03,
		scale = 0.03,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"base_stone_grassland", "base_stone_grassland_ocean",
		"base_sandstone_grassland", "base_sandstone_grassland_ocean",
		"base_deciduous_forest", "base_deciduous_forest_ocean",
		"base_coniferous_forest", "base_coniferous_forest_ocean",
	},
	y_min = 5,
	y_max = 31000,
	decoration = "default:grass_1",
})

-- Dry grasses

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.04,
		scale = 0.02,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_savanna"},
	y_min = 5,
	y_max = 31000,
	decoration = "default:dry_grass_5",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.04,
		scale = 0.02,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_savanna"},
	y_min = 5,
	y_max = 31000,
	decoration = "default:dry_grass_4",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.04,
		scale = 0.02,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_savanna"},
	y_min = 5,
	y_max = 31000,
	decoration = "default:dry_grass_3",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.04,
		scale = 0.02,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_savanna"},
	y_min = 5,
	y_max = 31000,
	decoration = "default:dry_grass_2",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.04,
		scale = 0.02,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_savanna"},
	y_min = 5,
	y_max = 31000,
	decoration = "default:dry_grass_1",
})

-- Junglegrass

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.1,
	biomes = {"base_jungle"},
	y_min = 1,
	y_max = 31000,
	decoration = "default:junglegrass",
})

-- Dry shrub

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand", "default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.02,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_desert", "base_tundra"},
	y_min = 2,
	y_max = 31000,
	decoration = "default:dry_shrub",
})

-- Cactus

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 80,
	noise_params = {
		offset = -0.0005,
		scale = 0.0015,
		spread = {x=200, y=200, z=200},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"base_desert"},
	y_min = 2,
	y_max = 31000,
	decoration = "default:cactus",
	height = 2,
        height_max = 5,
})

-- Papyrus

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.3,
		scale = 0.7,
		spread = {x=200, y=200, z=200},
		seed = 354,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"base_savanna_ocean"},
	y_min = 0,
	y_max = 0,
	schematic = {
		size = {x = 1, y = 7, z = 1},
		data = {
			{name = "default:dirt", prob = 255, force_place = true},
			{name = "default:papyrus", prob = 255, force_place = true},
			{name = "default:papyrus", prob = 255},
			{name = "default:papyrus", prob = 255},
			{name = "default:papyrus", prob = 255},
			{name = "default:papyrus", prob = 255},
			{name = "default:papyrus", prob = 255},
		},
		yslice_prob = {
                	{ypos = 2, prob = 127},
                	{ypos = 3, prob = 127},
		},
	},
})
