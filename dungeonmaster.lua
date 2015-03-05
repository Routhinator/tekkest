
-- Dungeon Master by PilzAdam

mobs:register_mob("mobs:dungeon_master", {
	-- animal, monster, npc, barbarian
	type = "monster",
	-- aggressive, shoots fireballs at player
	passive = false,
	damage = 4,
	attack_type = "shoot",
	shoot_interval = 2.5,
	arrow = "mobs:fireball",
	shoot_offset = 0,
	-- health & armor
	hp_min = 12, hp_max = 35, armor = 60,
	-- textures and model
	collisionbox = {-0.7, -0.01, -0.7, 0.7, 2.6, 0.7},
	visual = "mesh",
	mesh = "mobs_dungeon_master.x",
	drawtype = "front",
	available_textures = {
		total = 3,
		texture_1 = {"mobs_dungeon_master.png"},
		texture_2 = {"mobs_dungeon_master2.png"},
		texture_3 = {"mobs_dungeon_master3.png"},
	},
	visual_size = {x=8, y=8},
	blood_texture = "mobs_blood.png",
	-- sounds
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dungeonmaster",
	},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	view_range = 15,
	-- drops mese or diamond when dead
	drops = {
		{name = "default:mese_crystal_fragment",
		chance = 1, min = 1, max = 3,},
		{name = "default:diamond",
		chance = 4, min = 1, max = 1,},
		{name = "default:mese_crystal",
		chance = 2, min = 1, max = 2,},
		{name = "default:diamond_block",
		chance = 30, min = 1, max = 1,},
	},
	-- damaged by
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	-- model animation
	animation = {
		stand_start = 0,		stand_end = 19,
		walk_start = 20,		walk_end = 35,
		punch_start = 36,		punch_end = 48,
		speed_normal = 15,		speed_run = 15,
	},
})
-- spawn on stone between 0 and 5 light, 1 in 7000 chance, 1 dungeon master in area starting at -70 and below
mobs:register_spawn("mobs:dungeon_master", {"default:stone"}, 5, 0, 7000, 1, -70)
-- register spawn egg
mobs:register_egg("mobs:dungeon_master", "Dungeon Master", "fire_basic_flame.png", 1)

-- Fireball (dungeon masters weapon)
mobs:register_arrow("mobs:fireball", {
	visual = "sprite",
	visual_size = {x=1, y=1},
	textures = {"mobs_fireball.png"},
	velocity = 5,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=8},
		}, 0)
	end,

	-- node hit, bursts into flame (cannot blast through obsidian or protection redo mod items)
	hit_node = function(self, pos, node)
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.get_node(p).name
					if n ~= "default:obsidian"
					and n ~= "default:obsidianbrick"
					and not n:find("protector:") then	
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.set_node(p, {name="fire:basic_flame"})
					else
						minetest.set_node(p, {name="air"})
					end
					end
				end
			end
		end
	end
})
