minetest.register_node("tekkest_blocks:tar_block", {
  description = "Tar Block",
	tiles = {"tar.png"},
	groups = {fleshy=3, falling_node=1},
  sounds = tekkest_blocks.node_sound_tar_defaults({
		footstep = {name="tar_footstep", gain=0.5},
		dug = {name="tar_footstep", gain=1.0},
	}),
})
