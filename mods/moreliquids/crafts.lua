minetest.register_craftitem("moreliquids:fuel_bucket", {
	inventory_image = "fuel_bucket.png",
	stack_max = 50,
	description = "Bucket of Fuel",
})

minetest.register_craft({
	type = "fuel",
	recipe = "moreliquids:fuel_bucket",
	burntime = 90,
})

minetest.register_craftitem("moreliquids:oil_bucket", {
	inventory_image = "oil_bucket.png",
	stack_max = 50,
	description = "Bucket of Oil",
})

minetest.register_craft({
	type = "fuel",
	recipe = "moreliquids:oil_bucket",
	burntime = 40,
})

minetest.register_craftitem("moreliquids:sewage_bucket", {
	inventory_image = "sewage_bucket.png",
	stack_max = 50,
	description = "Bucket of Sewage",
})

minetest.register_craftitem("moreliquids:toxic_waste_bucket", {
	inventory_image = "toxic_waste_bucket.png",
	stack_max = 50,
	description = "Bucket of Toxic Waste",
})

minetest.register_craftitem("moreliquids:cryogel_bucket", {
	inventory_image = "cryogel_bucket.png",
	stack_max = 50,
	description = "Bucket of Cryogel",
})

minetest.register_craftitem("moreliquids:tar_bucket", {
	inventory_image = "tar_bucket.png",
	stack_max = 50,
	description = "Bucket of Tar",
})
