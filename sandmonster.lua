
-- Sand Monster by PilzAdam

mobs:register_mob("mobs:sand_monster", {
	-- animal, monster, npc, barbarian
	type = "monster",
	-- aggressive, deals 1 damage to player when hit
	passive = false,
	attack_type = "dogfight",
	damage = 1,
	-- health & armor
	hp_min = 4, hp_max = 20, armor = 100,
	-- textures and model
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_sand_monster.x",
	drawtype = "front",
	available_textures = {
		total = 1,
		texture_1 = {"mobs_sand_monster.png"},
	},
	visual_size = {x=8,y=8},
	blood_texture = "mobs_blood.png",
	-- sounds
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_sandmonster",
	},
	-- speed and jump, sinks in water
	walk_velocity = 1.5,
	run_velocity = 4,
	view_range = 15,
	jump = true,
	floats = 0,
	-- drops desert sand when dead
	drops = {
		{name = "default:desert_sand",
		chance = 1, min = 3, max = 5,},
	},
	-- damaged by
	water_damage = 3,
	lava_damage = 1,
	light_damage = 0,
	-- model animation
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 39,
		walk_start = 41,		walk_end = 72,
		run_start = 74,			run_end = 105,
		punch_start = 74,		punch_end = 105,
	},
})
-- spawns on desert sand between 0 and 20 light, 1 in 7000 chance, 1 sand monster in area up to 31000 in height
mobs:register_spawn("mobs:sand_monster", {"default:desert_sand"}, 20, 0, 7000, 1, 31000)
-- register spawn egg
mobs:register_egg("mobs:sand_monster", "Sand Monster", "default_desert_sand.png", 1)
