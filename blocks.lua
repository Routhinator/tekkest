minetest.register_node("tekkest_blocks:tar_block", {
  description = "Tar Block",
	tiles = {"tar.png"},
	groups = {fleshy=3, falling_node=1},
	sounds = default.node_sound_tar_defaults({
		footstep = {name="default_tar_footstep", gain=0.25},
	}),
})
