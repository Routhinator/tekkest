
-- Shark by Sapier

if mobs.mod and mobs.mod == "redo" then
	mobs:register_mob("shark:shark", {
		type = "monster",
		passive = false,
		attack_type = "dogfight",
		damage = 10,
		hp_min = 20,
		hp_max = 25,
		armor = 150,
		collisionbox = {-0.75, -0.5, -0.75, 0.75, 0.5, 0.75},
		visual = "mesh",
		mesh = "mob_shark.b3d",
		textures = {
			{"mob_shark_shark_mesh.png"},
		},
		visual_size = {x=1, y=1},
		makes_footstep_sound = false,
		walk_velocity = 2,
		run_velocity = 4,
		stepheight = 1,
		jump = true,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = 0,
		rotate = 4.5, -- 0=front, 1.5=side, 3.0=back, 4.5=side2
		view_range = 14,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		animation = {
			speed_normal = 15,	speed_run = 25,
			stand_start = 1,	stand_end = 80,
			walk_start = 80,	walk_end = 160
		}
	})
	--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("shark:shark",
		{"default:water_flowing","default:water_source"},
		{"default:water_flowing","default:water_source"},
		5, 20, 30, 30000, 1, -31000, 0)
	mobs:register_egg("shark:shark", "Shark", "mob_shark_shark_item.png", 0)

end
