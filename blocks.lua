minetest.register_node("tekkest_blocks:sticky_tar_block", {
  description = "Sticky Tar Block",
	tiles = {"sticky_tar.png"},
	groups = {crumbly=2},
  sounds = tekkest_blocks.node_sound_tar_defaults({
		footstep = {name="sticky_tar_footstep", gain=0.5},
		dug = {name="sticky_tar_footstep", gain=1.0},
	}),
})
