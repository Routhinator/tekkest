
-- Jellyfish by blert2112

if mobs.mod and mobs.mod == "redo" then

	mobs:register_mob("jellyfish:jellyfish", {
		type = "animal",
		attack_type = "dogfight",
		damage = 5,
		hp_min = 5,
		hp_max = 10,
		armor = 100,
		collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
		visual = "mesh",
		mesh = "jellyfish.b3d",
		textures = {
			{"jellyfish.png"}
		},
		makes_footstep_sound = false,
		walk_velocity = 0.1,
		run_velocity = 0.1,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = 0,
		view_range = 10,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0
	})
	--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("jellyfish:jellyfish",
		{"default:water_source"},
		{"default:water_flowing","default:water_source"},
		5, 20, 30, 10000, 1, -31000, 0)
	mobs:register_egg("jellyfish:jellyfish", "Jellyfish", "jellyfish_inv.png", 0)

end

