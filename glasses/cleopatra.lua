
-- This file supplies Cleopatra glasses

minetest.register_node("nightclub:cleopatra", {
	description = "Cleopatra glass",
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
			{-0.19, -0.05, -0.09, 0.19, 0, 0.19},  -- lip
			{-0.2, -0.3, -0.2, 0.2, -0.05, 0.2},  -- body
			{-0.02, -0.48, -0.02, 0.02, -0.3, 0.02},  -- stem
			{-0.13, -0.5, -0.13, 0.13, -0.48, 0.13},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			
			},
		},
})
