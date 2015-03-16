local load_time_start = os.clock()
treecapitator = {}


--------------------------------------Settings----------------------------------------------

treecapitator.drop_items = false	--drop them / get them in the inventory
treecapitator.drop_leaf = false
treecapitator.play_sound = true
treecapitator.default_tree = {	--replaces not defined stuff (see below)
	trees = {"default:tree"},
	leaves = {"default:leaves"},
	range = 2,
	fruits = {},
}

---------------------------------------------------------------------------------------------


--the table where the trees are stored at
treecapitator.trees = {}

--a table of trunks which couldn't be redefined
treecapitator.rest_tree_nodes = {}


--------------------------------------------fcts----------------------------------------------

-- don't use minetest.get_node more times for the same position
local known_nodes = {}
local function remove_node(pos)
	known_nodes[pos.z .." "..pos.y .." "..pos.x] = {name="air", param2=0}
	minetest.remove_node(pos)
end

local function dig_node(pos, node, digger)
	known_nodes[pos.z .." "..pos.y .." "..pos.x] = {name="air", param2=0}
	minetest.node_dig(pos, node, digger)
end

local function get_node(pos)
	local pstr = pos.z .." "..pos.y .." "..pos.x
	local node = known_nodes[pstr]
	if node then
		return node
	end
	node = minetest.get_node(pos)
	known_nodes[pstr] = node
	return node
end

--definitions of functions for the destruction of nodes
local destroy_node, drop_leaf, remove_leaf
if treecapitator.drop_items then
	function drop_leaf(pos, item, inv)
		minetest.add_item(pos, item)
	end

	function destroy_node(pos, node, digger)
		local drops = minetest.get_node_drops(node.name)
		for _,item in pairs(drops) do
			minetest.add_item(pos, item)
		end
		remove_node(pos)
	end
else
	function drop_leaf(pos, item, inv)
		if inv
		and inv:room_for_item("main", item) then
			inv:add_item("main", item)
		else
			minetest.add_item(pos, item)
		end
	end

	destroy_node = dig_node
end

if not treecapitator.drop_leaf then
	function remove_leaf(p, leaf, inv)
		local leaves_drops = minetest.get_node_drops(leaf)
		for _, itemname in pairs(leaves_drops) do
			if itemname ~= leaf then
				drop_leaf(p, itemname, inv)
			end
		end
		remove_node(p)	--remove the leaves
	end
else
	function remove_leaf(p, _, _, node, digger)
		destroy_node(p, node, digger)
	end
end


table.icontains = table.icontains or function(t, v)
	for i = 1,#t do
		if t[i] == v then
			return true
		end
	end
	return false
end

--tests if the node is a trunk
local function findtree(node)
	if node == 0 then
		return true
	end
	return table.icontains(treecapitator.rest_tree_nodes, node.name)
end

--returns positions for leaves allowed to be dug
local function find_next_trees(pos, range, trees, leaves, fruits)
	local tab = {}
	local r = 2*range
	for i = -r, r do
		for j = -r, r do
			for h = r,-r,-1 do
				local p = {x=pos.x+j, y=pos.y+h, z=pos.z+i}

				-- tests if a trunk is at the current pos
				local nd = get_node(p)
				if table.icontains(trees, nd.name)
				and nd.param2 == 0
				and (pos.x ~= p.x or pos.z ~= p.z) then
					-- search for a leaves or fruit node next to the trunk
					local leaf = get_node({x=p.x, y=p.y+1, z=p.z}).name
					local leaf_found = table.icontains(leaves, leaf) or table.icontains(fruits, leaf)
					if not leaf_found then
						leaf = get_node({x=p.x, y=p.y, z=p.z+1}).name
						leaf_found = table.icontains(leaves, leaf) or table.icontains(fruits, leaf)
					end

					if leaf_found then
						local z1 = math.max(-range+i, -range)
						local z2 = math.min(range+i, range)
						local y1 = math.max(-range+h, -range)
						local y2 = math.min(range+h, range)
						local x1 = math.max(-range+j, -range)
						local x2 = math.min(range+j, range)
						for z = z1,z2 do
							for y = y1,y2 do
								for x = x1,x2 do
									tab[z.." "..y.." "..x] = true
								end
							end
						end
					end
				end
			end
		end
	end
	--minetest.chat_send_all(dump(tab))	<— I used these to find my mistake
	local tab2,n = {},1
	for z = -range,range do
		for y = -range,range do
			for x = -range,range do
				if not tab[z.." "..y.." "..x] then
					local p = {x=x, y=y, z=z}
					tab2[n] = p
					n = n+1
				end
			end
		end
	end
	return tab2
end


--the function which is used for capitating
local capitating = false	--necessary if minetest.node_dig is used
local function capitate_tree(pos, node, digger)
	if capitating
	or not digger then
		return
	end
	--minetest.chat_send_all("test0")	<— and this
	if digger:get_player_control().sneak
	or not findtree(node) then
		return
	end
	local t1 = os.clock()
	capitating = true
	local np = {x=pos.x, y=pos.y+1, z=pos.z}
	local nd = get_node(np)
	for _,tr in pairs(treecapitator.trees) do
		local trees = tr.trees
		local tree_found = table.icontains(trees, nd.name) and nd.param2 == 0
		if tree_found then
			local tab, n = {}, 1
			while tree_found do
				tab[n] = {vector.new(np), nd}
				n = n+1
				np.y = np.y+1
				nd = get_node(np)
				tree_found = table.icontains(trees, nd.name) and nd.param2 == 0
			end
			local leaves = tr.leaves
			local fruits = tr.fruits

			np.y = np.y-1
			local leaf_found = table.icontains(leaves, nd.name) or table.icontains(fruits, nd.name)
			if not leaf_found then
				local leaf = get_node({x=np.x, y=np.y, z=np.z+1}).name
				leaf_found = table.icontains(leaves, leaf) or table.icontains(fruits, leaf)
			end

			if leaf_found then
				if treecapitator.play_sound then
					minetest.sound_play("tree_falling", {pos = pos, max_hear_distance = 32})
				end
				for _,i in pairs(tab) do
					destroy_node(i[1], i[2], digger)
				end
				local range = tr.range
				local inv = digger:get_inventory()
				local head_ps = find_next_trees(np, range, trees, leaves, fruits)	--definition of the leavespositions
				--minetest.chat_send_all("test1")	<— this too
				for _,i in pairs(head_ps) do
					local p = vector.add(np, i)
					local node = get_node(p)
					local nodename = node.name
					if not table.icontains(trees, nodename)
					or node.param2 ~= 0 then
						if table.icontains(leaves, nodename) then
							remove_leaf(p, nodename, inv, node, digger)
						elseif table.icontains(fruits, nodename) then
							destroy_node(p, node, digger)
						end
					end
				end
			end
			break
		end
	end
	known_nodes = {}
	capitating = false
	minetest.log("info", string.format("[treecapitator] tree capitated at ("..pos.x.."|"..pos.y.."|"..pos.z..") after ca. %.2fs", os.clock() - t1))
end

--adds trunks to rest_tree_nodes if they were overwritten by other mods
local tmp_trees = {}
local function test_overwritten(tree)
	table.insert(tmp_trees, tree)
end

minetest.after(0, function()
	for _,tree in pairs(tmp_trees) do
		if not minetest.registered_nodes[tree].after_dig_node then
			minetest.log("error", "[treecapitator] Error: Overwriting "..tree.." went wrong.")
			table.insert(treecapitator.rest_tree_nodes, tree)
		end
	end
	tmp_trees = nil
end)

--tests if minetest.override_item is aviable
local new_version = minetest.override_item and true

if not new_version then
	table.copy = table.copy or function(tab)
		local tab2 = {}
		for n,i in pairs(tab) do
			tab2[n] = i
		end
		return tab2
	end
end

--the function to register trees to become capitated
local num = 1
function treecapitator.register_tree(tab)
	for name,value in pairs(treecapitator.default_tree) do
		tab[name] = tab[name] or value	--replaces not defined stuff
	end
	treecapitator.trees[num] = tab
	num = num+1

	for _,tree in pairs(tab.trees) do
		local data = minetest.registered_nodes[tree]
		if not data then
			minetest.log("info", "[treecapitator] Info: "..tree.." isn't registered yet.")
			table.insert(treecapitator.rest_tree_nodes, tree)
		else
			if data.after_dig_node then
				minetest.log("info", "[treecapitator] Info: "..tree.." already has an after_dig_node.")
				table.insert(treecapitator.rest_tree_nodes, tree)
			else
				if new_version then
					minetest.override_item(tree, {
						after_dig_node = function(pos, _, _, digger)
							capitate_tree(pos, 0, digger)
						end
					})
				else
					data = table.copy(data)
					data.after_dig_node = function(pos, _, _, digger)
						capitate_tree(pos, 0, digger)
					end
					minetest.register_node(":"..tree, data)
				end
				test_overwritten(tree)
			end
		end
	end
end

dofile(minetest.get_modpath("treecapitator").."/trees.lua")

---------------------------------------------------------------------------------------------


--use register_on_dignode if trunks are left
if treecapitator.rest_tree_nodes[1] then
	minetest.register_on_dignode(capitate_tree)
end

minetest.log("info", string.format("[treecapitator] loaded after ca. %.2fs", os.clock() - load_time_start))
