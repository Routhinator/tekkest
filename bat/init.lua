
if mobs.mod and mobs.mod == "redo" then

-- local variables
	local l_skins = {
		{"animal_bat.png"},
		{"animal_bat.png^[colorize:black:150"}
	}
	local l_spawnnear	= {"default:stone"}
	local l_spawnchance	= 10000

	mobs:register_mob("bat:bat", {
		type = "animal",
		damage = 1,
		attack_type = "dogfight",
		hp_min = 7,
		hp_max = 12,
		armor = 130,
		collisionbox = {-0.4,-0.4,-0.4, 0.4,0.4,0.4},
		visual = "mesh",
		mesh = "animal_bat.b3d",
		textures = l_skins,
		rotate = 4.5,
		walk_velocity = 10,
		run_velocity = 23,
		fall_speed = 0,
		stepheight = 3,
		sounds = {
			random = "creatures_ghost",
			war_cry = "animal_bat",
			damage = "animal_bat",
			attack = "animal_bat",
		},
		fly = true,
		water_damage = 2,
		lava_damage = 10,
		light_damage = 0,
--		capture_chance_hand = 5,
--		capture_chance_net = 60,
--		capture_chance_lasso = 0,
		view_range = 10,
		animation = {
			speed_normal = 24,		speed_run = 24,
			stand_start = 30,		stand_end = 59,
			walk_start = 30,		walk_end = 59,
			run_start = 30,			run_end = 59,
			punch_start = 60,		punch_end = 89
		},
--		on_rightclick = function(self, clicker)
--			mobs:capture_mob(self, clicker, nil)
--		end
	})

	--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("bat:bat", {"air"}, l_spawnnear, 2, 10, 30, l_spawnchance, 5, -100, 11000)
	mobs:register_egg("bat:bat", "Bat", "animal_bat_inv.png", 0)

end
