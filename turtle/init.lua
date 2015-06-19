
-- Turtle by AspireMint??, Sapier??

if mobs.mod and mobs.mod == "redo" then
-- land turtle
	mobs:register_mob("turtle:turtle", {
		type = "animal",
		passive = true,
		hp_min = 15,
		hp_max = 20,
		armor = 300,
		collisionbox = {-0.4, 0.0, -0.4, 0.4, 0.35, 0.4},
		visual = "mesh",
		visual_size = {x=1,y=1},
		mesh = "mobf_turtle.x",
		textures = {
			{"mobf_turtle.png"}
		},
		blood_texture = "mobs_blood.png",
		makes_footstep_sound = false,
		view_range = 10,
		rotate = 4.5,
		walk_chance = 40,
		walk_velocity = 0.1,
		run_velocity = 0.3,
		jump = false,
		fly = false,
		floats = 1,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		fall_damage = 1,
		animation = {
			speed_normal = 0.1,	speed_run = 0.3,
			stand_start = 1,	stand_end = 50,
			walk_start = 60,	walk_end = 90,
			hide_start = 95,	hide_end = 100
		},
		follow = "farming:carrot",
		on_rightclick = function(self, clicker)
			self.state = ""
			self.set_velocity(self, 0)
			self.object:set_animation({x=self.animation.hide_start, y=self.animation.hide_end}, self.animation.speed_normal, 0)
			minetest.after(5, function() 
				self.state = "stand"
			end)
		end
	})

	mobs:register_spawn("turtle:turtle", {"default:dirt_with_grass", }, 20, 5, 20000, 1, 31000)
	mobs:register_egg("turtle:turtle", "Turtle", "default_grass.png", 1)

-- sea turtle
	mobs:register_mob("turtle:seaturtle", {
		type = "animal",
		passive = true,
		hp_min = 20,
		hp_max = 30,
		armor = 350,
		collisionbox = {-0.4, 0.0, -0.4, 0.4, 0.35, 0.4},
		visual = "mesh",
		visual_size = {x=2,y=2},
		mesh = "mobf_turtle.x",
		textures = {
			{"mobf_turtle.png"}
		},
		blood_texture = "mobs_blood.png",
		makes_footstep_sound = false,
		view_range = 10,
		rotate = 4.5,
		walk_chance = 50,
		walk_velocity = 1,
		run_velocity = 1.5,
		stepheight = 1,
		jump = true,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = 0,
		floats = 1,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		fall_damage = 0,
		animation = {
			speed_normal = 0.1,	speed_run = 0.3,
			stand_start = 1,	stand_end = 50,
			walk_start = 105,	walk_end = 135,
			hide_start = 95,	hide_end = 100
		},
	})

	mobs:spawn_specific("turtle:seaturtle",
		{"default:water_flowing","default:water_source"},
		{"default:water_flowing","default:water_source","seaplants:kelpbrown","seaplants:kelpgreen"},
		5, 20, 60, 20000, 1, -31000, 0)
	mobs:register_egg("turtle:seaturtle", "Sea Turtle", "default_water.png", 1)
end
