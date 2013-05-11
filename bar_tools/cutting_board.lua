
-- This file supplies cutting board

minetest.register_node("nightclub:cutting_board", {
	description = "Cutting board",
	drawtype = "nodebox",
	tiles = {'cutting_board.png'},
	paramtype = "light",
	light_source = 8,
	walkable = false,
	buildable_to = true,
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.42, -0.3, 0.3, -0.5, 0.3},
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.42, -0.5, 0.5, -0.5, 0.5},
			},
		},
})
