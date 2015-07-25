-- Fir Forest

minetest.register_biome({
    name = "base_fir_forest",
    node_top = "default:dirt_with_snow",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 0,
    y_min = 6,
    y_max = 32000,
    heat_point = 10,
    humidity_point = 60,
})

minetest.register_biome({
    name = "base_fir_forest_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -192,
    y_max = 5,
    heat_point = 10,
    humidity_point = 60,
})

-- Stone Grassland

minetest.register_biome({
    name = "base_stone_grassland",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 0,
    y_min = 6,
    y_max = 32000,
    heat_point = 40,
    humidity_point = 10,
})

minetest.register_biome({
    name = "base_stone_grassland_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -192,
    y_max = 5,
    heat_point = 40,
    humidity_point = 10,
})

-- Coniferous Forest

minetest.register_biome({
    name = "base_coniferous_forest",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = 6,
    y_max = 32000,
    heat_point = 30,
    humidity_point = 30,
})

minetest.register_biome({
    name = "base_coniferous_forest_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -192,
    y_max = 5,
    heat_point = 30,
    humidity_point = 30,
})

-- Redwood Forest

minetest.register_biome({
    name = "base_redwood_forest",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = 6,
    y_max = 32000,
    heat_point = 30,
    humidity_point = 80,
})

minetest.register_biome({
    name = "base_redwood_forest_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -192,
    y_max = 5,
    heat_point = 30,
    humidity_point = 80,
})

-- Pine Forest

minetest.register_biome({
    name = "base_pine_forest",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = 6,
    y_max = 32000,
    heat_point = 10,
    humidity_point = 80,
})

minetest.register_biome({
    name = "base_pine_forest_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -192,
    y_max = 5,
    heat_point = 10,
    humidity_point = 80,
})

-- Oak Forest

minetest.register_biome({
    name = "base_oak_forest",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = 6,
    y_max = 32000,
    heat_point = 30,
    humidity_point = 60,
})

minetest.register_biome({
    name = "base_oak_forest_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -192,
    y_max = 5,
    heat_point = 30,
    humidity_point = 60,
})

-- Deciduous Forest

minetest.register_biome({
    name = "base_deciduous_forest",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = 6,
    y_max = 32000,
    heat_point = 50,
    humidity_point = 60,
})

minetest.register_biome({
    name = "base_deciduous_forest_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -31000,
    y_max = 5,
    heat_point = 50,
    humidity_point = 60,
})

-- Birch Forest

minetest.register_biome({
    name = "base_birch_forest",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 3,
    node_dust = "air",
    height_min = 1,
    height_max = 32000,
    heat_point = 75,
    humidity_point = 45,
})

minetest.register_biome({
    name = "base_birch_forest_ocean",
    node_top = "default:sand",
    depth_top = 5,
    node_filler = "default:stone",
    depth_filler = 0,
    node_water = "default:water_source",
    node_dust_water = "default:water_source",
    height_min = -31000,
    height_max = 1,
    heat_point = 75,
    humidity_point = 45,
})

-- Wild Orchard

minetest.register_biome({
    name = "base_wild_orchard",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = 6,
    y_max = 32000,
    heat_point = 50,
    humidity_point = 80,
})

minetest.register_biome({
    name = "base_wild_orchard_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -31000,
    y_max = 5,
    heat_point = 50,
    humidity_point = 80,
})

-- Wet Grasslands

minetest.register_biome({
    name = "base_grass_wet",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 3,
    height_min = 6,
    height_max = 100,
    heat_point = 60,
    humidity_point = 30,
})

minetest.register_biome({
    name = "base_grass_wet_ocean",
    node_top = "default:sand",
    depth_top = 5,
    node_filler = "default:stone",
    depth_filler = 0,
    y_min = -31000,
    y_max = 5,
    heat_point = 60,
    humidity_point = 30,
})

-- Glacier

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
    humidity_point = 10,
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
    humidity_point = 10,
})

-- Tundra

minetest.register_biome({
    name = "base_tundra",
    node_top = "default:dirt_with_snow",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 1,
    node_dust = "default:snow",
    y_min = 2,
    y_max = 32000,
    heat_point = 15,
    humidity_point = 10,
})

minetest.register_biome({
    name = "base_tundra_ocean",
    node_top = "default:dirt_with_snow",
    depth_top = 5,
    node_filler = "default:stone",
    depth_filler = 0,
    node_water_top = "default:ice",
    depth_water_top = 2,
    y_min = -31000,
    y_max = 1,
    heat_point = 15,
    humidity_point = 10,
})

-- Tiaga

minetest.register_biome({
    name = "base_taiga",
    node_top = "default:snowblock",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    node_dust = "default:snow",
    y_min = 2,
    y_max = 32000,
    heat_point = 10,
    humidity_point = 30,
})

minetest.register_biome({
    name = "base_taiga_ocean",
    node_top = "default:dirt",
    depth_top = 1,
    node_filler = "default:stone",
    depth_filler = 2,
    node_water_top = "default:ice",
    depth_water_top = 1,
    height_min = -31000,
    height_max = 1,
    heat_point = 10,
    humidity_point = 30,
})

-- Desert

minetest.register_biome({
    name = "base_desert",
    node_top = "default:desert_sand",
    depth_top = 1,
    node_filler = "default:desert_sand",
    depth_filler = 1,
    node_stone = "default:desert_stone",
    y_min = 1,
    y_max = 32000,
    heat_point = 80,
    humidity_point = 10,
})

minetest.register_biome({
    name = "base_desert_ocean",
    node_top = "default:desert_sand",
    depth_top = 1,
    node_filler = "default:desert_sand",
    depth_filler = 2,
    node_stone = "default:desert_stone",
    y_min = -31000,
    y_max = 0,
    heat_point = 80,
    humidity_point = 10,
})

-- Jungle

minetest.register_biome({
    name = "base_jungle",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = 4,
    y_max = 32000,
    heat_point = 65,
    humidity_point = 75,
})

minetest.register_biome({
    name = "base_jungle_swamp",
    node_top = "default:dirt",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 2,
    y_min = -2,
    y_max = 5,
    heat_point = 65,
    humidity_point = 75,
})

minetest.register_biome({
    name = "base_jungle_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -31000,
    y_max = -2,
    heat_point = 65,
    humidity_point = 75,
})

-- Savanna

minetest.register_biome({
    name = "base_savanna",
    node_top = "default:dirt_with_dry_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 1,
    y_min = 5,
    y_max = 32000,
    heat_point = 60,
    humidity_point = 10,
})

minetest.register_biome({
    name = "base_savanna_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    y_min = -31000,
    y_max = 4,
    heat_point = 60,
    humidity_point = 10,
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

-- Tarpits

minetest.register_biome({
    name = "base_tarpit",
    node_top = "default:dirt_with_dry_grass",
    depth_top = 1,
    node_filler = "moreblocks:tar",
    node_stone = "moreblocks:tar",
    node_water_top = "tekkest_blocks:sticky_tar_block",
    node_water = "moreliquids:oil_source",
    depth_water_top = 2,
    depth_filler = 1,
    y_min = -31000,
    y_max = 100,
    heat_point = 85,
    humidity_point = 80,
})

-- Impact Zone

minetest.register_biome({
    name = "base_impact_zone",
    node_top = "default:dirt_with_dry_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    node_water = "technic:corium_source",
    depth_filler = 1,
    y_min = -31000,
    y_max = 100,
    heat_point = 95,
    humidity_point = 40,
})

-- Ruined Cities

minetest.register_biome({
    name = "base_ruined_cities",
    node_top = "moreblocks:tar",
    depth_top = 1,
    node_filler = "moreblocks:tar",
    node_water = "moreliquids:sewage_source",
    depth_filler = 1,
    y_min = -31000,
    y_max = 100,
    heat_point = 90,
    humidity_point = 70,
})
