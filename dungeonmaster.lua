
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
	textures = {
		{"mobs_dungeon_master.png"},
		{"mobs_dungeon_master2.png"},
		{"mobs_dungeon_master3.png"},
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
	velocity = 6,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=8},
		}, 0)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=8},
		}, 0)
	end,

	-- node hit, bursts into flame (cannot blast through obsidian or protection redo mod items)
	hit_node = function(self, pos, node)
	local pos = vector.round(pos)
	local radius = 1
	local vm = VoxelManip()
	local p1 = vector.subtract(pos, radius)
	local p2 = vector.add(pos, radius)
	local minp, maxp = vm:read_from_map(p1, p2)
	local a = VoxelArea:new({MinEdge = minp, MaxEdge = maxp})
	local data = vm:get_data()

	local p = {}

	local c_air = minetest.get_content_id("air")
	local c_ignore = minetest.get_content_id("ignore")
	local c_obsidian = minetest.get_content_id("default:obsidian")
	local c_brick = minetest.get_content_id("default:obsidianbrick")

	for z = -radius, radius do
	for y = -radius, radius do
	local vi = a:index(pos.x + (-radius), pos.y + y, pos.z + z)
	for x = -radius, radius do
		local cid = data[vi]
		p.x = pos.x + x
		p.y = pos.y + y
		p.z = pos.z + z
		if cid ~= c_air and cid ~= c_ignore and cid ~= c_obsidian and cid ~= c_brick then
			local n = minetest.get_node(p).name
			-- Don't destroy protection nodes but DO destroy nodes in protected area
			if not n:find("protector:") then -- and not minetest.is_protected(p, "") then
			if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
				minetest.set_node(p, {name="fire:basic_flame"})
			else
				minetest.remove_node(p)
			end
			end
		end
		vi = vi + 1
	end
	end
	end
	end
})
