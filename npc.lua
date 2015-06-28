
-- Npc by TenPlus1

mobs.npc_drops = { "default:pick_steel", "mobs:meat", "default:sword_steel", "default:shovel_steel", "farming:bread", "bucket:bucket_water" }

mobs:register_mob("mobs:npc", {
	-- animal, monster, npc
	type = "npc",
	-- aggressive, deals 2 damage to player/monster when hit
	passive = false,
	damage = 3,
	attack_type = "dogfight",
	attacks_monsters = true,
	-- health & armor
	hp_min = 10, hp_max = 20, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "character.b3d",
	drawtype = "front",
	textures = {
		{"mobs_npc.png"},
		{"mobs_npc2.png"}, -- female by nuttmeg20
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	-- drops wood and chance of apples when dead
	drops = {
		{name = "default:wood",
		chance = 1, min = 1, max = 3},
		{name = "default:apple",
		chance = 2, min = 1, max = 2},
		{name = "default:axe_stone",
		chance = 3, min = 1, max = 1},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	-- follow diamond
	follow = "default:diamond",
	view_range = 15,
	-- set owner and order
	owner = "",
	order = "follow",
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	-- right clicking with cooked meat will give npc more health
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local name = clicker:get_player_name()

		-- heal npc
		if item:get_name() == "mobs:meat"
		or item:get_name() == "farming:bread" then
			-- feed and add health
			local hp = self.object:get_hp()
			-- return if full health
			if hp >= self.hp_max then
				minetest.chat_send_player(name, "NPC at full health.")
				return
			end
			hp = hp + 4	-- add restorative value
			-- new health shouldn't exceed self.hp_max
			if hp > self.hp_max then hp = self.hp_max end
			self.object:set_hp(hp)
			-- take item
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end

		-- right clicking with gold lump drops random item from mobs.npc_drops
		elseif item:get_name() == "default:gold_lump" then
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 0.5
			minetest.add_item(pos, {name = mobs.npc_drops[math.random(1,#mobs.npc_drops)]})

		else
			-- if owner switch between follow and stand
			if self.owner and self.owner == clicker:get_player_name() then
				if self.order == "follow" then
					self.order = "stand"
				else
					self.order = "follow"
				end
			else
				self.owner = clicker:get_player_name()
			end
		end

		mobs:capture_mob(self, clicker, 0, 5, 80, false, nil)
	end,
})
-- spawning disabled for now
--mobs:register_spawn("mobs:npc", {"default:dirt_with_grass"}, 20, 0, 7000, 1, 31000)
-- register spawn egg
mobs:register_egg("mobs:npc", "Npc", "default_brick.png", 1)
