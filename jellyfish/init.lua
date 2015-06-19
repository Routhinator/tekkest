
-- Jellyfish by blert2112

if mobs.mod and mobs.mod == "redo" then
	mobs:register_mob("jellyfish:jellyfish", {
		type = "animal",
		passive = false,
		attack_type = "dogfight",
		damage = 5,
		hp_min = 15,
		hp_max = 25,
		armor = 150,
		collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
		visual = "mesh",
		mesh = "jellyfish.b3d",
		textures = {
			{"jellyfish.png"}
		},
		visual_size = {x=1, y=1},
		makes_footstep_sound = false,
		walk_velocity = 0.1,
		run_velocity = 0.1,
		stepheight = 1,
		jump = true,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = 0,
		rotate = 0, -- 0=front, 1.5=side, 3.0=back, 4.5=side2
		view_range = 14,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		animation = {
			speed_normal = 1,	speed_run = 1
		}
	})

--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("jellyfish:jellyfish",
		{"default:water_flowing","default:water_source"},
		{"default:water_flowing","default:water_source"},
		5, 20, 30, 5000, 1, -31000, 0)

	mobs:register_egg("jellyfish:jellyfish", "Jellyfish", "mob_shark_shark_item.png", 0)
end
