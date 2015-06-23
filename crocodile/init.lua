
-- Crocodile by NPX team

if mobs.mod and mobs.mod == "redo" then

-- load settings
	dofile(minetest.get_modpath("crocodile").."/SETTINGS.txt")
	local spawnchance = 60000
	if not ENABLE_WALKERS then
		spawnchance = spawnchance - 20000
	end
	if not ENABLE_FLOATERS then
		spawnchance = spawnchance - 20000
	end
	if not ENABLE_SWIMMERS then
		spawnchance = spawnchance - 20000
	end

-- no float
	if ENABLE_WALKERS then
		mobs:register_mob("crocodile:crocodile", {
			type = "monster",
			passive = false,
			attack_type = "dogfight",
			damage = 8,
			hp_min = 20,
			hp_max = 25,
			armor = 200,
			collisionbox = {-0.85, -0.30, -0.85, 0.85, 1.5, 0.85},
			drawtype = "front",
			visual = "mesh",
			mesh = "crocodile.x",
			textures = {
				{"croco.png"},
				{"croco2.png"},
			},
			visual_size = {x=4, y=4},
			makes_footstep_sound = true,
			sounds = {random = "croco"},
			walk_velocity = 1,
			run_velocity = 1.25,
			jump = true,
			floats = 0,
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = {
				speed_normal = 25,	speed_run = 30,
				stand_start = 0,	stand_end = 80,
				walk_start = 81,	walk_end = 170,
				run_start = 81,		run_end = 170,
				punch_start = 205,	punch_end = 220
			}
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("crocodile:crocodile",
			{"default:dirt_with_grass","default:dirt","default:jungle_grass","default:sand"},
			{"default:water_flowing","default:water_source","default:papyrus","dryplants:juncus","dryplants:reedmace"},
			-1, 18, 30, spawnchance, 1, 0, 31000)
		mobs:register_egg("crocodile:crocodile", "Crocodile", "default_grass.png", 1)
	end

-- float
	if ENABLE_FLOATERS then
		mobs:register_mob("crocodile:crocodile_float", {
			type = "monster",
			passive = false,
			attack_type = "dogfight",
			damage = 8,
			hp_min = 20,
			hp_max = 25,
			armor = 200,
			collisionbox = {-0.85, -0.30, -0.85, 0.85, 1.5, 0.85},
			drawtype = "front",
			visual = "mesh",
			mesh = "crocodile.x",
			textures = {
				{"croco.png"}
			},
			visual_size = {x=4, y=4},
			makes_footstep_sound = true,
			sounds = {random = "croco"},
			walk_velocity = 1,
			run_velocity = 1,
			jump = true,
			floats = 1,
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = {
				speed_normal = 25,	speed_run = 30,
				stand_start = 0,	stand_end = 80,
				walk_start = 81,	walk_end = 170,
				run_start = 81,		run_end = 170,
				punch_start = 205,	punch_end = 220
			}
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("crocodile:crocodile_float",
			{"default:water_flowing","default:water_source"},
			{"default:dirt_with_grass","default:jungle_grass","default:sand","default:dirt","default:papyrus","group:seaplants","dryplants:juncus","dryplants:reedmace"},
			-1, 18, 30, spawnchance, 1, -3, 31000)
		mobs:register_egg("crocodile:crocodile_float", "Crocodile (floater)", "default_grass.png", 1)
	end

-- swim
	if ENABLE_SWIMMERS then
		mobs:register_mob("crocodile:crocodile_swim", {
			type = "monster",
			passive = false,
			attack_type = "dogfight",
			damage = 8,
			hp_min = 20,
			hp_max = 25,
			armor = 200,
			collisionbox = {-0.85, -0.30, -0.85, 0.85, 1.5, 0.85},
			drawtype = "front",
			visual = "mesh",
			mesh = "crocodile.x",
			textures = {
				{"croco.png"}
			},
			visual_size = {x=4, y=4},
			makes_footstep_sound = true,
			sounds = {random = "croco"},
			walk_velocity = 1,
			run_velocity = 1,
			jump = true,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = 0,
			floats = 0,
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = {
				speed_normal = 25,	speed_run = 30,
				stand_start = 0,	stand_end = 80,
				walk_start = 81,	walk_end = 170,
				run_start = 81,		run_end = 170,
				punch_start = 205,	punch_end = 220
			}
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("crocodile:crocodile_swim",
			{"default:water_flowing","default:water_source"},
			{"default:sand","default:dirt","group:seaplants"},
			-1, 18, 30, spawnchance, 1, -8, 31000)
		mobs:register_egg("crocodile:crocodile_swim", "Crocodile (swimmer)", "default_grass.png", 1)
	end

end
