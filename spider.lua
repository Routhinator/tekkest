
-- Spider by fishyWET (borrowed from Lord of the Test [game])

mobs:register_mob("mobs:spider", {
	-- animal, monster, npc, barbarian
	type = "monster",
	-- agressive, does 3 damage to player when hit
	passive = false,
	attack_type = "dogfight",
	damage = 3,
	-- health & armor
	hp_min = 20, hp_max = 40, armor = 200,
	-- textures and model
	collisionbox = {-0.9, -0.01, -0.7, 0.7, 0.6, 0.7},
	visual = "mesh",
	mesh = "mobs_spider.x",
	drawtype = "front",
	available_textures = {
		total = 1,
		texture_1 = {"mobs_spider.png"},
	},
	visual_size = {x=7,y=7},
	-- sounds
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_spider",
		attack = "mobs_spider",
	},
	-- speed and jump, sinks in water
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	view_range = 15,
	floats = 0,
	-- drops string with a chance of sandstone or crystal spike if Ethereal installed
    drops = {
		{name = "farming:string",
		chance = 1, min = 1, max = 5,},
		{name = "ethereal:crystal_spike",
		chance = 15, min = 1, max = 2,},
	},
	-- damaged by
	water_damage = 5,
	lava_damage = 5,
	light_damage = 0,
	-- model animation
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 1,		stand_end = 1,
		walk_start = 20,		walk_end = 40,
		run_start = 20,			run_end = 40,
		punch_start = 50,		punch_end = 90,
	},
})
-- spawn on desert stone/crystal dirt, between 0 and 5 light, 1 in 7000 chance, 1 in area up to 71 in height
mobs:register_spawn("mobs:spider", {"default:desert_stone", "ethereal:crystal_topped_dirt"}, 5, 0, 7000, 1, 71)
-- register spawn egg
mobs:register_egg("mobs:spider", "Spider", "mobs_cobweb.png", 1)

-- Ethereal crystal spike compatibility
if not minetest.get_modpath("ethereal") then
	minetest.register_alias("ethereal:crystal_spike", "default:sandstone")
end

-- Cobweb
minetest.register_node("mobs:cobweb", {
	description = "Cobweb",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"mobs_cobweb.png"},
	inventory_image = "mobs_cobweb.png",
	paramtype = "light",
	sunlight_propagates = true,
	liquid_viscosity = 11,
	liquidtype = "source",
	liquid_alternative_flowing = "mobs:cobweb",
	liquid_alternative_source = "mobs:cobweb",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	groups = {snappy=1,liquid=3},
	drop = "farming:cotton",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "mobs:cobweb",
	recipe = {
		{"farming:string", "", "farming:string"},
		{"", "farming:string", ""},
		{"farming:string", "", "farming:string"},
	}
})
