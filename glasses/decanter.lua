
-- This file supplies decanters

minetest.register_node("nightclub:decanter", {
	description = "Decanter",
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
			{-0.23, -0.05, -0.23, 0.23, 0.1, 0.23},  -- upper
			{-0.2, -0.3, -0.2, 0.2, -0.05, 0.2},  -- stem
			{-0.3, -0.48, -0.3, 0.3, -0.3, 0.3},  -- body
			{-0.28, -0.5, -0.28, 0.28, -0.48, 0.28},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			
			},
		},
})
