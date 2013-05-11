
-- This file supplies punch bowls

minetest.register_node("nightclub:punch_bowl", {
	description = "Punch bowl",
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
			{-0.45, -0.2, -0.45, 0.45, 0.1, 0.45},  -- upper
			{-0.4, -0.48, -0.4, 0.4, -0.2, 0.4},  -- body
			{-0.35, -0.5, -0.35, 0.35, -0.48, 0.35},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.45, -0.5, -0.45, 0.45, 0.1, 0.45},
			
			},
		},
})
