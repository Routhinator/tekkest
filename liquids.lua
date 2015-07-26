local S = moreliquids.getter

for _, state in ipairs({ "flowing", "source" }) do
    -- Cryogel

    minetest.register_node("moreliquids:cryogel_" .. state, {
        description = S(state == "source" and "Cryogel Source" or "Flowing Cryogel"),
        drawtype = (state == "source" and "liquid" or "flowingliquid"),
        [state == "source" and "tiles" or "special_tiles"] = {
            {
                name = "cryogel_" .. state .. "_animated.png",
                animation = {
                    type = "vertical_frames",
                    aspect_w = 16,
                    aspect_h = 16,
                    length = 3.0,
                },
            }
        },
        paramtype = "light",
        paramtype2 = (state == "flowing" and "flowingliquid" or nil),
        light_source = (state == "source" and 8 or 5),
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        drop = "",
        drowning = 1,
        liquidtype = state,
        liquid_alternative_flowing = "moreliquids:cryogel_flowing",
        liquid_alternative_source = "moreliquids:cryogel_source",
        liquid_viscosity = LAVA_VISC,
        liquid_renewable = false,
        damage_per_second = 6,
        post_effect_color = { a = 192, r = 100, g = 203, b = 203 },
        groups = {
            liquid = 2,
            cold = 6,
            freezing = (state == "source" and 32000 or 16000),
            not_in_creative_inventory = (state == "flowing" and 1 or nil),
        },
    })

    -- Oil

    minetest.register_node("moreliquids:oil_" .. state, {
        description = S(state == "source" and "Oil Source" or "Flowing Oil"),
        drawtype = (state == "source" and "liquid" or "flowingliquid"),
        [state == "source" and "tiles" or "special_tiles"] = {
            {
                name = "oil_" .. state .. "_animated.png",
                animation = {
                    type = "vertical_frames",
                    aspect_w = 16,
                    aspect_h = 16,
                    length = 3.0,
                },
            }
        },
        paramtype = "light",
        paramtype2 = (state == "flowing" and "flowingliquid" or nil),
        light_source = (state == "source" and 8 or 5),
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        drop = "",
        drowning = 1,
        liquidtype = state,
        liquid_alternative_flowing = "moreliquids:oil_flowing",
        liquid_alternative_source = "moreliquids:oil_source",
        liquid_viscosity = LAVA_VISC,
        liquid_renewable = false,
        post_effect_color = { a = 210, r = 0, g = 0, b = 0 },
        groups = {
            liquid = 2,
            flammable = 1,
            not_in_creative_inventory = (state == "flowing" and 1 or nil),
        },
    })

    -- Fuel

    minetest.register_node("moreliquids:fuel_" .. state, {
        description = S(state == "source" and "Fuel Source" or "Flowing Fuel"),
        drawtype = (state == "source" and "liquid" or "flowingliquid"),
        [state == "source" and "tiles" or "special_tiles"] = {
            {
                name = "fuel_" .. state .. "_animated.png",
                animation = {
                    type = "vertical_frames",
                    aspect_w = 16,
                    aspect_h = 16,
                    length = 3.0,
                },
            }
        },
        paramtype = "light",
        paramtype2 = (state == "flowing" and "flowingliquid" or nil),
        light_source = (state == "source" and 8 or 5),
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        drop = "",
        drowning = 1,
        liquidtype = state,
        liquid_alternative_flowing = "moreliquids:fuel_flowing",
        liquid_alternative_source = "moreliquids:fuel_source",
        liquid_viscosity = LAVA_VISC,
        liquid_renewable = false,
        post_effect_color = { a = 90, r = 233, g = 187, b = 3 },
        groups = {
            liquid = 2,
            flammable = 1,
            not_in_creative_inventory = (state == "flowing" and 1 or nil),
        },
    })

    -- Sewage

    minetest.register_node("moreliquids:sewage_" .. state, {
        description = S(state == "source" and "Sewage Source" or "Flowing Sewage"),
        drawtype = (state == "source" and "liquid" or "flowingliquid"),
        [state == "source" and "tiles" or "special_tiles"] = {
            {
                name = "sewage_" .. state .. "_animated.png",
                animation = {
                    type = "vertical_frames",
                    aspect_w = 16,
                    aspect_h = 16,
                    length = 3.0,
                },
            }
        },
        paramtype = "light",
        paramtype2 = (state == "flowing" and "flowingliquid" or nil),
        light_source = (state == "source" and 8 or 5),
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        drop = "",
        drowning = 1,
        liquidtype = state,
        liquid_alternative_flowing = "moreliquids:sewage_flowing",
        liquid_alternative_source = "moreliquids:sewage_source",
        liquid_viscosity = WATER_VISC,
        liquid_renewable = false,
        post_effect_color = { a = 150, r = 172, g = 97, b = 0 },
        groups = {
            liquid = 2,
            flammable = 1,
            not_in_creative_inventory = (state == "flowing" and 1 or nil),
        },
    })

end
