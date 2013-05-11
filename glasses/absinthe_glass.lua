
-- This file supplies absinthe glasses

minetest.register_node("nightclub:absinth_glass", {
	description = "Absinthe",
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
			{-0.05, -0.2, -0.05, 0.05, -0.25, 0.05},  -- sugar cube
			{-0.2, -0.3, -0.13, 0.2, -0.25, 0.13},  -- spoon
			{-0.2, -0.29, -0.07, 0, -0.27, 0.07},  -- handle
			{-0.11, -0.35, -0.11, 0.11, -0.3, 0.11},  -- body
			{-0.01, -0.48, -0.01, 0.01, -0.35, 0.01},  -- stem
			{-0.09, -0.5, -0.09, 0.09, -0.48, 0.09},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			
			},
		},
})
