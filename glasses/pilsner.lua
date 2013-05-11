
-- This file supplies pilsner glasses

minetest.register_node("nightclub:pilsner", {
	description = "pilsner glass",
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
			{-0.13, -0.05, -0.13, 0.13, 0, 0.13},  -- lip
			{-0.12, -0.1, -0.12, 0.12, -0.05, 0.12},  -- top
			{-0.11, -0.2, -0.11, 0.11, -0.1, 0.11},  -- upper
			{-0.09, -0.45, -0.09, 0.09, -0.2, 0.09},  -- body
			{-0.11, -0.5, -0.11, 0.11, -0.45, 0.11},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			},
		},
})
