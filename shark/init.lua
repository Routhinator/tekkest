
if mobs.mod and mobs.mod == "redo" then

-- local variables
	local l_colors = {
		"#604000:175",	--brown
		"#ffffff:150",	--white
		"#404040:150",	--dark_grey
		"#a0a0a0:150"	--grey
	}
	local l_skins = {
		{"(shark_first.png^[colorize:"..l_colors[3]..")^(shark_second.png^[colorize:"..l_colors[4]..")^shark_third.png"},
		{"(shark_first.png^[colorize:"..l_colors[1]..")^(shark_second.png^[colorize:"..l_colors[2]..")^shark_third.png"},
		{"(shark_first.png^[colorize:"..l_colors[4]..")^(shark_second.png^[colorize:"..l_colors[2]..")^shark_third.png"}
	}
	local l_anims = {
		speed_normal = 24,	speed_run = 24,
		stand_start = 1,	stand_end = 80,
		walk_start = 80,	walk_end = 160,
		run_start = 80,		run_end = 160
	}
	local l_model			= "mob_shark.b3d"
	local l_egg_texture		= "mob_shark_shark_item.png"
	local l_spawn_in		= {"default:water_flowing","default:water_source"}
	local l_spawn_near		= {"default:water_flowing","default:water_source","seawrecks:woodship","seawrecks:uboot"}
	local l_spawn_chance	= 60000

-- load settings
	dofile(minetest.get_modpath("shark").."/SETTINGS.txt")
	if not ENABLE_SHARK_LARGE then
		l_spawn_chance = l_spawn_chance - 20000
	end
	if not ENABLE_SHARK_MEDIUM then
		l_spawn_chance = l_spawn_chance - 20000
	end
	if not ENABLE_SHARK_SMALL then
		l_spawn_chance = l_spawn_chance - 20000
	end

-- large
	if ENABLE_SHARK_LARGE then
		mobs:register_mob("shark:shark_lg", {
			type = "monster",
			attack_type = "dogfight",
			damage = 10,
			hp_min = 20,
			hp_maxv= 25,
			armor = 150,
			collisionbox = {-0.75, -0.5, -0.75, 0.75, 0.5, 0.75},
			visual = "mesh",
			mesh = l_model,
			textures = l_skins,
			makes_footstep_sound = false,
			walk_velocity = 2,
			run_velocity = 4,
			stepheight = 1,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = 0,
			rotate = 4.5, -- 0=front, 1.5=side, 3.0=back, 4.5=side2
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = l_anims
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("shark:shark_lg", l_spawn_in, l_spawn_near, -1, 20, 30, l_spawn_chance, 1, -31000, 0)
		mobs:register_egg("shark:shark_lg", "Shark (large)", l_egg_texture, 0)
	end

-- medium
	if ENABLE_SHARK_MEDIUM then
		mobs:register_mob("shark:shark_md", {
			type = "monster",
			attack_type = "dogfight",
			damage = 8,
			hp_min = 15,
			hp_max = 20,
			armor = 125,
			collisionbox = {-0.57, -0.38, -0.57, 0.57, 0.38, 0.57},
			visual = "mesh",
			visual_size = {x=0.75, y=0.75},
			mesh = l_model,
			textures = l_skins,
			makes_footstep_sound = false,
			walk_velocity = 2,
			run_velocity = 4,
			stepheight = 1,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = 0,
			rotate = 4.5, -- 0=front, 1.5=side, 3.0=back, 4.5=side2
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = l_anims
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("shark:shark_md", l_spawn_in, l_spawn_near, -1, 20, 30, l_spawn_chance, 1, -31000, 0)
		mobs:register_egg("shark:shark_md", "Shark (medium)", l_egg_texture, 0)
	end

-- small
	if ENABLE_SHARK_SMALL then
		mobs:register_mob("shark:shark_sm", {
			type = "monster",
			attack_type = "dogfight",
			damage = 6,
			hp_min = 10,
			hp_max = 15,
			armor = 100,
			collisionbox = {-0.38, -0.25, -0.38, 0.38, 0.25, 0.38},
			visual = "mesh",
			visual_size = {x=0.5, y=0.5},
			mesh = l_model,
			textures = l_skins,
			makes_footstep_sound = false,
			walk_velocity = 2,
			run_velocity = 4,
			stepheight = 1,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = 0,
			rotate = 4.5, -- 0=front, 1.5=side, 3.0=back, 4.5=side2
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = l_anims
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("shark:shark_sm", l_spawn_in, l_spawn_near, -1, 20, 30, l_spawn_chance, 1, -31000, 0)
		mobs:register_egg("shark:shark_sm", "Shark (small)", l_egg_texture, 0)
	end

end
