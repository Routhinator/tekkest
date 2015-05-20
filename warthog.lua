
-- Warthog by KrupnoPavel

mobs:register_mob("mobs:pumba", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	damage = 2,
	hp_min = 5,
	hp_max = 15,
	armor = 200,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_pumba.x",
	textures = {
		{"mobs_pumba.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_pig",
		attack = "mobs_pig_angry",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	follow = "default:apple",
	view_range = 10,
	drops = {
		{name = "mobs:pork_raw",
		chance = 1, min = 2, max = 3,},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		stand_start = 25,		stand_end = 55,
		walk_start = 70,		walk_end = 100,
		punch_start = 70,		punch_end = 100,
	},
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local name = clicker:get_player_name()

		if item:get_name() == "default:apple" then
			-- take item
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			-- make child grow quicker
			if self.child == true then
				self.hornytimer = self.hornytimer + 10
				return
			end
			-- feed and tame
			self.food = (self.food or 0) + 1
			if self.food > 7 then
				self.food = 0
				if self.hornytimer == 0 then
					self.horny = true
				end
				self.tamed = true
				-- make owner
				if not self.owner or self.owner == "" then
					self.owner = name
				end
				minetest.sound_play("mobs_pig", {
					object = self.object,
					gain = 1.0,
					max_hear_distance = 16,
					loop = false,
				})
			end
			return
		end

		if item:get_name() == "mobs:magic_lasso"
		and clicker:is_player()
		and clicker:get_inventory()
		and self.child == false
		and clicker:get_inventory():room_for_item("main", "mobs:pumba") then

			-- pick up if owner
			if self.owner == name then
				clicker:get_inventory():add_item("main", "mobs:pumba")
				self.object:remove()
				item:add_wear(3000) -- 22 uses
				clicker:set_wielded_item(item)
			-- cannot pick up if not tamed
			elseif not self.owner or self.owner == "" then
				minetest.chat_send_player(name, "Not tamed!")
			-- cannot pick up if not tamed
			elseif self.owner ~= name then
				minetest.chat_send_player(name, "Not owner!")
			end
		end
	end,
})

mobs:register_spawn("mobs:pumba", {"ethereal:mushroom_dirt"}, 20, 10, 15000, 1, 31000)

mobs:register_egg("mobs:pumba", "Warthog", "wool_pink.png", 1)

-- porkchop (raw and cooked)
minetest.register_craftitem("mobs:pork_raw", {
	description = "Raw Porkchop",
	inventory_image = "mobs_pork_raw.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("mobs:pork_cooked", {
	description = "Cooked Porkchop",
	inventory_image = "mobs_pork_cooked.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:pork_cooked",
	recipe = "mobs:pork_raw",
	cooktime = 5,
})
