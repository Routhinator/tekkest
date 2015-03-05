
-- Oerkki by PilzAdam

mobs:register_mob("mobs:oerkki", {
	-- animal, monster, npc, barbarian
	type = "monster",
	-- aggressive, deals 4 damage when player hit
	passive = false,
	attack_type = "dogfight",
	damage = 4,
	-- health & armor
	hp_min = 8, hp_max = 34, armor = 100,
	-- textures and model
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_oerkki.x",
	drawtype = "front",
	available_textures = {
		total = 2,
		texture_1 = {"mobs_oerkki.png"},
		texture_2 = {"mobs_oerkki2.png"},
	},
	visual_size = {x=5, y=5},
	blood_texture = "mobs_blood.png",
	-- sounds
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_oerkki",
	},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 3,
	view_range = 15,
	jump = true,
	-- chance of dropping obsidian
	drops = {
		{name = "default:obsidian",
		chance = 3, min = 1, max = 2,},
	},
	-- damaged by
	water_damage = 1,
	lava_damage = 1,
	light_damage = 1,
	-- model animation
	animation = {
		stand_start = 0,		stand_end = 23,
		walk_start = 24,		walk_end = 36,
		run_start = 37,			run_end = 49,
		punch_start = 37,		punch_end = 49,
		speed_normal = 15,		speed_run = 15,
	},
})
-- spawns on stone between 0 and 5 light, 1 in 7000 chance, 1 in area starting at -10 and below
mobs:register_spawn("mobs:oerkki", {"default:stone"}, 5, -1, 7000, 1, -10)
-- register spawn egg
mobs:register_egg("mobs:oerkki", "Oerkki", "default_obsidian.png", 1)
