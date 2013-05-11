
-- This file supplies beer bottles

minetest.register_node("nightclub:lowball", {
	description = "lowball glass",
	drawtype = "nodebox",
	tiles = {
		'glass_top.png', -- top
		'glass_top.png',  -- bottom
		'glass.png',  -- side
		'glass.png',  -- side
		'glass.png',  -- back
		'glass.png',  -- front
	},
	paramtype = "light",
	light_source = 4,
	paramtype2 = "facedir",
	buildable_to = true,
	walkable = false,
	use_texture_alpha = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.12, -0.4, -0.12, 0.12, -0.23, 0.12},  -- upper
			{-0.11, -0.45, -0.11, 0.11, -0.4, 0.11},  -- body
			{-0.1, -0.5, -0.1, 0.1, -0.45, 0.1},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			
			},
		},
})
