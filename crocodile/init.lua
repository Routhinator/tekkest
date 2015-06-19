-- Crocodile by NPX team

if mobs.mod and mobs.mod == "redo" then
	mobs:register_mob("crocodile:crocodile", {
		type = "monster",
		passive = false,
		attack_type = "dogfight",
		damage = 3,
		hp_min = 15,
		hp_max = 20,
		armor = 50,
		collisionbox = {-0.85, -0.30, -0.85, 0.85, 1.5, 0.85},
		drawtype = "front",
		visual = "mesh",
		mesh = "crocodile.x",
		textures = {
			{"croco.png"},
		},
		visual_size = {x=4, y=4},
		makes_footstep_sound = true,
		sounds = {random = "croco"},
		walk_velocity = 1,
		run_velocity = 1,
		jump = true,
		floats = 0,
		view_range = 15,
		water_damage = 0,
		lava_damage = 10,
		light_damage = 0,
	animation = {
		speed_normal = 25,	speed_run = 25,
		stand_start = 0,	stand_end = 80,
		walk_start = 81,	walk_end = 170,
		run_start = 81,		run_end = 170,
		punch_start = 205,	punch_end = 220,
	}
	})

	--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("crocodile:crocodile",
		{"default:water_flowing","default:water_source","default:sand", "default:dirt"},
		{"default:sand", "default:dirt","seaplants:seagrassgreen","seaplants:seagrassred"},
		-1, 18, 60, 60000, 1, -2, 31000)
	mobs:register_egg("crocodile:crocodile", "Crocodile", "default_grass.png", 1)

end
