function tekkest_blocks.node_sound_tar_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "sticky_tar_footstep", gain = 1.0}
	table.dug = table.dug or
			{name = "sticky_tar_footstep", gain = 1.5}
	table.place = sticky_table.place or
			{name = "sticky_tar_footstep", gain = 1.0}
	default.node_sound_defaults(table)
	return table
end
