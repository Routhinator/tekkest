-- Decorations

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
	biomes = {"base_birch_forest"}
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
