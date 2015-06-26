
if mobs.mod and mobs.mod == "redo" then

-- local variables
	local l_colors = {
		"#ffffff",	--1 white-
		"#a0a0a0",	--2 grey-
		"#000000",	--3 black-
		"#ff0000",	--4 red-
		"#ffff00",	--5 yellow-
		"#00ff00",	--6 green-
		"#00ffff",	--7 cyan-
		"#0000ff",	--8 blue-
		"#ff00ff",	--9 magenta-
		"#ff8000",	--10 orange-
		"#8000ff",	--11 violet-
		"#404040",	--12 dark_grey-
		"#008000",	--13 dark_green-
		"#ffb0ff",	--14 pink-
		"#604000"	--15 brown-
	}
	local l_skins = {
		{"bf1.png^bf2.png^bf3.png^bf4.png^bf5.png"},
		{"(bf1.png^[colorize:"..l_colors[10]..")^(bf2.png^[colorize:"..l_colors[11]..")^(bf3.png^[colorize:"..l_colors[5]..")^(bf4.png^[colorize:"..l_colors[7]..")^(bf5.png^[colorize:"..l_colors[3]..")"},
		{"(bf1.png^[colorize:"..l_colors[9]..")^(bf2.png^[colorize:"..l_colors[6]..")^(bf3.png^[colorize:"..l_colors[4]..")^(bf4.png^[colorize:"..l_colors[8]..")^(bf5.png^[colorize:"..l_colors[1]..")"},
		{"(bf1.png^[colorize:"..l_colors[5]..")^(bf2.png^[colorize:"..l_colors[7]..")^(bf3.png^[colorize:"..l_colors[6]..")^(bf4.png^[colorize:"..l_colors[11]..")^(bf5.png^[colorize:"..l_colors[12]..")"},
		{"(bf1.png^[colorize:"..l_colors[14]..")^(bf2.png^[colorize:"..l_colors[1]..")^(bf3.png^[colorize:"..l_colors[8]..")^(bf4.png^[colorize:"..l_colors[10]..")^(bf5.png^[colorize:"..l_colors[2]..")"},
		{"(bf1.png^[colorize:"..l_colors[13]..")^(bf2.png^[colorize:"..l_colors[15]..")^(bf3.png^[colorize:"..l_colors[3]..")^(bf4.png^[colorize:"..l_colors[12]..")^(bf5.png^[colorize:"..l_colors[4]..")"}
	}

-- Butterfly
	mobs:register_mob("butterfly:butterfly", {
		type = "animal",
		passive = true,
		hp_min = 1,
		hp_max = 2,
		armor = 100,
		collisionbox = {-1, -0.3, -1, 1, 0.3, 1},
		visual = "mesh",
		mesh = "mobf_butterfly.x",
		textures = l_skins,
		walk_velocity = 2,
		fall_speed = 0,
		stepheight = 3,
		fly = true,
		water_damage = 1,
		lava_damage = 1,
		light_damage = 0,
		fall_damage = 0,
		fall_speed = 0,
		view_range = 10,
		animation = {
			speed_normal = 15,	speed_run = 30,
			stand_start = 0,	stand_end = 90,
			walk_start = 0,		walk_end = 90,
		}
	})
	--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific("butterfly:butterfly", {"air"}, {"group:flower"}, 5, 20, 30, 10000, 2, 0, 31000)
	mobs:register_egg("butterfly:butterfly", "Butterfly", "default_cloud.png", 1)

end
