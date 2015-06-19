
-- Fishies by Sapier

if mobs.mod and mobs.mod == "redo" then
-- Clownfish
	mobs:register_mob("fishies:clownfish", {
		type = "animal",
		passive = true,
		hp_min = 1,
		hp_max = 4,
		armor = 0,
		collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		visual = "mesh",
		mesh = "animal_clownfish.b3d",
		textures = {
			{"animal_clownfish_mesh.png"},
		},
		visual_size = {x=1, y=1},
		makes_footstep_sound = false,
		walk_velocity = 1,
		run_velocity = 2,
		stepheight = 1,
		jump = true,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = 0,
		rotate = 4.5, -- 0=front, 1.5=side, 3.0=back, 4.5=side2
		view_range = 10,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		animation = {
			speed_normal = 15,		speed_run = 25,
			stand_start = 1,		stand_end = 80,
			walk_start = 81,		walk_end = 155
		}
	})

	--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("fishies:clownfish",
		{"default:water_flowing","default:water_source"},
		{"default:sand", "default:dirt","seaplants:kelpbrown","seaplants:seagrassred"},
		5, 20, 30, 10000, 1, -31000, 0)

	mobs:register_egg("fishies:clownfish", "Clownfish", "animal_clownfish_clownfish_item.png", 0)

-- Blue/white fish
	mobs:register_mob("fishies:blue_white", {
		type = "animal",
		passive = true,
		hp_min = 1,
		hp_max = 4,
		armor = 0,
		collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
		visual = "mesh",
		mesh = "fish_blue_white.b3d",
		textures = {
			{"fish_blue_white_mesh.png"},
		},
		visual_size = {x=0.75, y=0.75},
		makes_footstep_sound = false,
		walk_velocity = 1,
		run_velocity = 2,
		stepheight = 1,
		jump = true,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = 0,
		rotate = 4.5, -- 0=front, 1.5=side, 3.0=back, 4.5=side2
		view_range = 10,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		animation = {
			speed_normal = 15,		speed_run = 25,
			stand_start = 1,		stand_end = 80,
			walk_start = 81,		walk_end = 155
		}
	})

	--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("fishies:blue_white",
		{"default:water_flowing","default:water_source"},
		{"default:sand", "default:dirt","seaplants:kelpgreen","seaplants:seagrassgreen"},
		5, 20, 30, 10000, 1, -31000, 0)

	mobs:register_egg("fishies:blue_white", "Blue white fish", "animal_fish_blue_white_fish_blue_white_item.png", 0)

end
