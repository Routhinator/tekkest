
-- Oerkki

mobs:register_mob("mobs:oerkki", {
	type = "monster",
	hp_min = 8,
	hp_max = 34,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_oerkki.x",
	--textures = {"mobs_oerkki.png"},
	available_textures = {
		total = 2,
		texture_1 = {"mobs_oerkki.png"},
		texture_2 = {"mobs_oerkki2.png"},
	},
	visual_size = {x=5, y=5},
	makes_footstep_sound = false,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 4,
	drops = {
		{name = "default:obsidian",
		chance = 3,
		min = 1,
		max = 2,},
	},
	armor = 100,
	drawtype = "front",
	light_resistant = true,
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 36,
		run_start = 37,
		run_end = 49,
		punch_start = 37,
		punch_end = 49,
		speed_normal = 15,
		speed_run = 15,
	},
	sounds = {
		random = "mobs_oerkki",
	},
	jump = true,
	step = 0.5,
	blood_texture = "mobs_blood.png",
})
mobs:register_spawn("mobs:oerkki", {"default:stone"}, 2, -1, 7000, 1, -10)

-- Spawn Egg
minetest.register_craftitem("mobs:oerkki", {
	description = "Oerkki Egg",
	inventory_image = "default_obsidian.png^mobs_chicken_egg.png",
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above and not minetest.is_protected(pointed_thing.above, placer:get_player_name()) then
			minetest.env:add_entity(pointed_thing.above, "mobs:oerkki")
			itemstack:take_item()
		end
		return itemstack
	end,
})
