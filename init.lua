minetest.register_craftitem("charcoal:charcoal_lump", {
	image = "charcoal_lump.png",
    	description="Lump of Charcoal",
})

minetest.register_craft({
	output = "charcoal:charcoal_lump 4",
	type = "cooking",
	recipe = "group:tree",
	cooktime = 4
})

minetest.register_craft({
	type = "fuel",
	recipe = "charcoal:charcoal_lump",
	burntime = 8,
})
