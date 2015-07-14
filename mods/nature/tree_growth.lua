-- Tree growing

local ABM_DELAY = 3600
local ABM_CHANCE = 30

local TREE_GROW_DELAY = ABM_DELAY
local DENSITY = 3 -- allow <number> trunks in the radius
local NODE_TO_GROW = "default:leaves"

local current_mod_name = minetest.get_current_modname()

dofile(minetest.get_modpath(current_mod_name) .. "/trees.lua")

local function grow_trunk(pos, nodename)
    nature:grow_node(pos, nodename)

    local found_air = minetest.env:find_nodes_in_area(
	{ x = pos.x - 1, y = pos.y - 1, z = pos.z - 1 },
	{ x = pos.x + 1, y = pos.y + 1, z = pos.z + 1 },
	{ "air" }
    )

    if found_air ~= nil then
	for key,current_node in ipairs(found_air) do
	    nature:grow_node(current_node, NODE_TO_GROW)
	end
    end
end

minetest.register_abm({
    nodenames = { "nature:blossom" },
    interval = TREE_GROW_DELAY,
    chance = ABM_CHANCE,

    action = function(pos, node, active_object_count, active_object_count_wider)
        -- Check for trunks in area
	local found_trees = minetest.env:find_nodes_in_area(
	    { x = pos.x - 1, y = pos.y - 1, z = pos.z - 1 },
	    { x = pos.x + 1, y = pos.y, z = pos.z + 1 },
	    { "default:tree" }
	)
	local trunk_count = table.getn(found_trees)
	found_trees = minetest.env:find_nodes_in_area(
	    { x = pos.x - 1, y = pos.y - 1, z = pos.z - 1 },
	    { x = pos.x + 1, y = pos.y, z = pos.z + 1 },
	    { "default:jungletree" }
	)
	local jungle_trunk_count = table.getn(found_trees)

        local all_trunks = trunk_count + jungle_trunk_count

	-- Change this to check for water nearby.
	local can_grow = nature:is_near_water(pos)
        
        -- If there is at least 1 trunk and there are not many of them...
        if can_grow and (all_trunks > 0) and (all_trunks < DENSITY) then
	    if(math.random(1, all_trunks) <= trunk_count) then
		grow_trunk(pos, "default:tree")
	    else
		grow_trunk(pos, "default:jungletree")
	    end
        end
    end
})
