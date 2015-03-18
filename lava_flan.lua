
-- Lava Flan by Zeg9

mobs:register_mob("mobs:lava_flan", {
	-- animal, monster, npc, barbarian
	type = "monster",
	-- aggressive, deals 3 damage to player when hit
	passive = false,
	attack_type = "dogfight",
	damage = 3,
	-- health and armor
	hp_min = 10, hp_max = 35, armor = 80,
	-- textures and model
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
	visual = "mesh",
	mesh = "zmobs_lava_flan.x",
	drawtype = "front",
	textures = {
		{"zmobs_lava_flan.png"},
	},
	blood_texture = "fire_basic_flame.png",
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_lavaflan",
		war_cry = "mobs_lavaflan",
		death = nil,
	},
	-- speed and jump, sinks in water
	walk_velocity = 0.5,
	run_velocity = 2,
	jump = true,
	view_range = 10,
	floats = 0,
	-- chance of dropping lava orb when dead
	drops = {
		{name = "mobs:lava_orb",
		chance = 15, min = 1, max = 1,},
	},
	-- damaged by
	water_damage = 5,
	lava_damage = 0,
	light_damage = 0,
	-- model animation
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 8,
		walk_start = 10,		walk_end = 18,
		run_start = 20,			run_end = 28,
		punch_start = 20,		punch_end = 28,
	},
})
-- spawns in lava between 0 and 15 light, 1 in 1000 chance, 3 in area below 0 in height
mobs:register_spawn("mobs:lava_flan", {"default:lava_source"}, 15, 0, 1000, 3, 0)
-- register spawn egg
mobs:register_egg("mobs:lava_flan", "Lava Flan", "default_lava.png", 1)

-- Lava Orb
minetest.register_craftitem("mobs:lava_orb", {
	description = "Lava orb",
	inventory_image = "zmobs_lava_orb.png",
})
minetest.register_alias("zmobs:lava_orb", "mobs:lava_orb")
