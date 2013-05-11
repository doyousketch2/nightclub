
-- This file supplies brandy

minetest.register_node("nightclub:brandy", {
	description = "Brandy",
	drawtype = "nodebox",
	tiles = {
		'red_wine_top.png', -- top
		'red_wine_top.png',  -- bottom
		'brandy.png',  -- side
		'brandy.png',  -- side
		'brandy.png',  -- back
		'brandy_label.png',  -- front
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
			{-0.08, 0.15, -0.08, 0.08, 0.2, 0.08},  -- lip
			{-0.065, 0.09, -0.065, 0.065, 0.15, 0.065},  -- stem
			{-0.15, 0, -0.1, 0.15, 0.09, 0.1},  -- taper
			{-0.23, -0.4, -0.15, 0.23, -0.1, 0.15},  -- ledge
			{-0.2, -0.45, -0.12, 0.2, 0, 0.12},  -- body
			{-0.18, -0.5, -0.1, 0.18, -0.45, 0.1},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.35, 0.3},
			},
		},
})
