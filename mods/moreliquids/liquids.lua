OIL_VISC = 16
OIL_ALPHA = 210
FUEL_VISC = 1
FUEL_ALPHA = 90
SEWAGE_VISC = 7
SEWAGE_ALPHA = 150
TOXIC_WASTE_VISC = 6
TOXIC_WASTE_ALPHA = 210
CRYOGEL_VISC = 100
CRYOGEL_ALPHA = 120
TAR_VISC = 100
TAR_ALPHA = 210


-- Oil

minetest.register_node("moreliquids:oil_flowing", {
	description = "Oil (flowing)",
	inventory_image = minetest.inventorycube("oil.png"),
	drawtype = "flowingliquid",
	tile_images = {"oil.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
	liquid_alternative_flowing = "moreliquids:oil_flowing",
	liquid_alternative_source = "moreliquids:oil_source",
	liquid_viscosity = OIL_VISC,
	post_effect_color = {a=OIL_ALPHA, r=0, g=0, b=0},
	special_materials = {
		{image="oil.png", backface_culling=false},
		{image="oil.png", backface_culling=true},
	},
})

minetest.register_node("moreliquids:oil_source", {
	description = "Oil",
	inventory_image = minetest.inventorycube("oil.png"),
	drawtype = "liquid",
	tile_images = {"oil.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
	liquid_alternative_flowing = "moreliquids:oil_flowing",
	liquid_alternative_source = "moreliquids:oil_source",
	liquid_viscosity = OIL_VISC,
	post_effect_color = {a=OIL_ALPHA, r=0, g=0, b=0},
	special_materials = {
		{image="oil.png", backface_culling=false},
	},
})

-- Fuel

minetest.register_node("moreliquids:fuel_flowing", {
	description = "Fuel (flowing)",
	inventory_image = minetest.inventorycube("fuel.png"),
	drawtype = "flowingliquid",
	tile_images = {"fuel.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
	liquid_alternative_flowing = "moreliquids:fuel_flowing",
	liquid_alternative_source = "moreliquids:fuel_source",
	liquid_viscosity = FUEL_VISC,
	post_effect_color = {a=FUEL_ALPHA, r=233, g=187, b=3},
	special_materials = {
		{image="fuel.png", backface_culling=false},
		{image="fuel.png", backface_culling=true},
	},
})

minetest.register_node("moreliquids:fuel_source", {
	description = "Fuel",
	inventory_image = minetest.inventorycube("fuel.png"),
	drawtype = "liquid",
	tile_images = {"fuel.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
	liquid_alternative_flowing = "moreliquids:fuel_flowing",
	liquid_alternative_source = "moreliquids:fuel_source",
	liquid_viscosity = FUEL_VISC,
	post_effect_color = {a=FUEL_ALPHA, r=233, g=187, b=3},
	special_materials = {
		{image="fuel.png", backface_culling=false},
	},
})

-- Sewage

minetest.register_node("moreliquids:sewage_flowing", {
	description = "Sewage (flowing)",
	inventory_image = minetest.inventorycube("sewage.png"),
	drawtype = "flowingliquid",
	tile_images = {"sewage.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
	liquid_alternative_flowing = "moreliquids:sewage_flowing",
	liquid_alternative_source = "moreliquids:sewage_source",
	liquid_viscosity = SEWAGE_VISC,
	post_effect_color = {a=SEWAGE_ALPHA, r=172, g=97, b=0},
	special_materials = {
		{image="sewage.png", backface_culling=false},
		{image="sewage.png", backface_culling=true},
	},
})

minetest.register_node("moreliquids:sewage_source", {
	description = "Sewage",
	inventory_image = minetest.inventorycube("sewage.png"),
	drawtype = "liquid",
	tile_images = {"sewage.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
	liquid_alternative_flowing = "moreliquids:sewage_flowing",
	liquid_alternative_source = "moreliquids:sewage_source",
	liquid_viscosity = SEWAGE_VISC,
	post_effect_color = {a=SEWAGE_ALPHA, r=172, g=97, b=0},
	special_materials = {
		{image="sewage.png", backface_culling=false},
	},
})

-- Toxic Waste

minetest.register_node("moreliquids:toxic_waste_flowing", {
	description = "Toxic Waste (flowing)",
	inventory_image = minetest.inventorycube("toxic_waste.png"),
	drawtype = "flowingliquid",
	tile_images = {"toxic_waste.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
  light_source = default.LIGHT_MAX - 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "moreliquids:toxic_waste_flowing",
	liquid_alternative_source = "moreliquids:toxic_waste_source",
	liquid_viscosity = TOXIC_WASTE_VISC,
	post_effect_color = {a=TOXIC_WASTE_ALPHA, r=41, g=250, b=0},
	special_materials = {
		{image="toxic_waste.png", backface_culling=false},
		{image="toxic_waste.png", backface_culling=true},
	},
})

minetest.register_node("moreliquids:toxic_waste_source", {
	description = "Toxic Waste",
	inventory_image = minetest.inventorycube("toxic_waste.png"),
	drawtype = "liquid",
	tile_images = {"toxic_waste.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
  light_source = default.LIGHT_MAX - 1,
	liquidtype = "source",
	liquid_alternative_flowing = "moreliquids:toxic_waste_flowing",
	liquid_alternative_source = "moreliquids:toxic_waste_source",
	liquid_viscosity = TOXIC_WASTE_VISC,
	post_effect_color = {a=TOXIC_WASTE_ALPHA, r=41, g=250, b=0},
	special_materials = {
		{image="toxic_waste.png", backface_culling=false},
	},
})

-- Cryogel

minetest.register_node("moreliquids:cryogel_flowing", {
	description = "Cryogel (flowing)",
	inventory_image = minetest.inventorycube("cryogel.png"),
	drawtype = "flowingliquid",
	tile_images = {"cryogel.png"},
	paramtype = "light",
	walkable = true,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
  light_source = default.LIGHT_MAX - 1,
	liquid_alternative_flowing = "moreliquids:cryogel_flowing",
	liquid_alternative_source = "moreliquids:cryogel_source",
	liquid_viscosity = CRYOGEL_VISC,
	post_effect_color = {a=CRYOGEL_ALPHA, r=100, g=203, b=203},
	special_materials = {
		{image="cryogel.png", backface_culling=false},
		{image="cryogel.png", backface_culling=true},
	},
})

minetest.register_node("moreliquids:cryogel_source", {
	description = "Cryogel",
	inventory_image = minetest.inventorycube("cryogel.png"),
	drawtype = "liquid",
	tile_images = {"cryogel.png"},
	paramtype = "light",
	walkable = true,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
  light_source = default.LIGHT_MAX - 1,
	liquid_alternative_flowing = "moreliquids:cryogel_flowing",
	liquid_alternative_source = "moreliquids:cryogel_source",
	liquid_viscosity = CRYOGEL_VISC,
	post_effect_color = {a=CRYOGEL_ALPHA, r=100, g=203, b=203},
	special_materials = {
		{image="cryogel.png", backface_culling=false},
	},
})

-- Tar

minetest.register_node("moreliquids:tar_flowing", {
	description = "Tar (flowing)",
	inventory_image = minetest.inventorycube("tar.png"),
	drawtype = "flowingliquid",
	tile_images = {"tar.png"},
	paramtype = "light",
	walkable = true,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
	liquid_alternative_flowing = "moreliquids:tar_flowing",
	liquid_alternative_source = "moreliquids:tar_source",
	liquid_viscosity = TAR_VISC,
	post_effect_color = {a=TAR_ALPHA, r=54, g=0, b=150},
	special_materials = {
		{image="tar.png", backface_culling=false},
		{image="tar.png", backface_culling=true},
	},
})

minetest.register_node("moreliquids:tar_source", {
	description = "Tar",
	inventory_image = minetest.inventorycube("tar.png"),
	drawtype = "liquid",
	tile_images = {"tar.png"},
	paramtype = "light",
	walkable = true,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
	liquid_alternative_flowing = "moreliquids:tar_flowing",
	liquid_alternative_source = "moreliquids:tar_source",
	liquid_viscosity = TAR_VISC,
	post_effect_color = {a=TAR_ALPHA, r=54, g=0, b=150},
	special_materials = {
		{image="tar.png", backface_culling=false},
	},
})
