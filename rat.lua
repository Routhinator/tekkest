
-- Rat by PilzAdam

mobs:register_mob("mobs:rat", {
	type = "animal",
	passive = true,
	hp_min = 1,
	hp_max = 4,
	armor = 200,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "mobs_rat.x",
	textures = {
		{"mobs_rat.png"},
		{"mobs_rat2.png"},
	},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_rat",
	},
	walk_velocity = 1,
	jump = true,
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	on_rightclick = function(self, clicker)
		if clicker:is_player()
		and clicker:get_inventory()
		and clicker:get_inventory():room_for_item("main", "mobs:rat") then
			clicker:get_inventory():add_item("main", "mobs:rat")
			self.object:remove()
		end
	end,
})

mobs:register_spawn("mobs:rat", {"default:stone"}, 20, 0, 11000, 1, 0)

mobs:register_egg("mobs:rat", "Rat", "mobs_rat_inventory.png", 0)
	
-- cooked rat, yummy!
minetest.register_craftitem("mobs:rat_cooked", {
	description = "Cooked Rat",
	inventory_image = "mobs_cooked_rat.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:rat_cooked",
	recipe = "mobs:rat",
	cooktime = 5,
})
