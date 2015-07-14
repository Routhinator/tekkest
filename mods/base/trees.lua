function base.get_spawn_tree_func(treedef)
	return function(data, a, x, y, z, minp, maxp, pr)
		if minp.y <= y and y <= maxp.y then
			minetest.after(0, minetest.spawn_tree, {x=x, y=y, z=z}, treedef)
		end
	end
end

if minetest.get_modpath("moretrees") then
	base.register_tree({
		min_humidity = 0,
		min_temperature = 0.2,
		min_height = 1,
		max_height = 5,
		grows_on = c_grass,
		chance = 800,
		grow = base.get_spawn_tree_func(moretrees.rubber_tree_model)
	})
end
