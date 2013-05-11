
-- This file supplies saki

minetest.register_node("nightclub:saki", {
	description = "Saki",
	drawtype = "nodebox",
	tiles = {
		'stein_top.png', -- top
		'stein_top.png',  -- bottom
		'stein.png',  -- side
		'stein.png',  -- side
		'stein.png',  -- back
		'stein.png',  -- front
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
			{-0.15, -0.1, -0.15, 0.15, 0, 0.15},  -- lip
			{-0.1, -0.2, -0.1, 0.1, -0.1, 0.1},  -- stem
			{-0.15, -0.3, -0.15, 0.15, -0.2, 0.15},  -- upper
			{-0.2, -0.45, -0.2, 0.2, -0.3, 0.2},  -- body
			{-0.19, -0.5, -0.19, 0.19, -0.45, 0.19},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			},
		},
})
