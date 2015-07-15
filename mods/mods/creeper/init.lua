
-- Creeper by Davedevils (from his subgame MineClone)

mobs:register_mob("creeper:creeper", {
	type = "monster",
	passive = false,
	attack_type = "explode",
	damage = 21,
	hp_min = 30,
	hp_max = 40,
	armor = 90,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_tree_monster.x",
	drawtype = "front",
	textures = {
		{"mobs_creeper.png"},
	},
	visual_size = {x=4.5,y=4.5},
	blood_texture = "mobs_creeper_inv.png",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_treemonster",
		explode = "tnt_explode",
	},
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	view_range = 16,
	drops = {
		{name = "default:torch",
		chance = 10,
		min = 3,
		max = 5,},
		{name = "default:iron_lump",
		chance = 5,
		min = 1,
		max = 2,},
		{name = "default:coal_lump",
		chance = 3,
		min = 1,
		max = 3,},
	},
	water_damage = 2,
	lava_damage = 15,
	light_damage = 0,
	animation = {
		stand_start = 0,		stand_end = 24,
		walk_start = 25,		walk_end = 47,	
		run_start = 48,			run_end = 62,
		punch_start = 48,		punch_end = 62,
		speed_normal = 15,		speed_run = 15,
	},
})
mobs:register_spawn("creeper:creeper", {"default:dirt_with_grass"}, 20, 8, 12000, 1, 31000)
mobs:register_egg("creeper:creeper", "Creeper", "mobs_creeper_inv.png", 1)
