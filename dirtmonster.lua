
-- Dirt Monster by PilzAdam

mobs:register_mob("mobs:dirt_monster", {
	-- animal, monster, npc, barbarian
	type = "monster",
	-- aggressive, deals 2 damage to player when hit
	passive = false,
	attack_type = "dogfight",
	damage = 2,
	-- health & armor
	hp_min = 3, hp_max = 27, armor = 100,
	-- textures and model
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	drawtype = "front",
	available_textures = {
		total = 1,
		texture_1 = {"mobs_dirt_monster.png"},
	},
	visual_size = {x=3, y=2.6},
	blood_texture = "default_dirt.png",
	-- sounds
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dirtmonster",
	},
	-- speed and jump
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	-- drops dirt when dead
	drops = {
		{name = "default:dirt",
		chance = 1, min = 3, max = 5},
	},
	-- damaged by
	water_damage = 1,
	lava_damage = 5,
	light_damage = 2,
	-- model animation
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 14,
		walk_start = 15,		walk_end = 38,
		run_start = 40,			run_end = 63,
		punch_start = 40,		punch_end = 63,
	},
})
-- spawn on normal;grey dirt between 0 and 5 light, 1 in 7000 change, 1 dirt monster in area up to 31000 in height
mobs:register_spawn("mobs:dirt_monster", {"default:dirt_with_grass", "ethereal:gray_dirt_top"}, 5, 0, 7000, 1, 31000)
-- register spawn egg
mobs:register_egg("mobs:dirt_monster", "Dirt Monster", "default_dirt.png", 1)
