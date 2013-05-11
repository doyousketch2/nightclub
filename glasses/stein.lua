
-- This file supplies beer steins

minetest.register_node("nightclub:stein", {
	description = "Stein",
	drawtype = "nodebox",
	tiles = {
		'stein_top.png', -- top
		'back.png',  -- bottom
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
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.11, -0.4, -0.11, 0.11, -0.1, 0.11},  -- upper
			{-0.11, -0.3, -0.15, 0.15, -0.29, 0.11}, --
			{-0.15, -0.3, -0.11, 0.2, -0.09, 0.11}, -- handle
			{-0.11, -0.1, -0.15, 0.15, -0.09, 0.11}, --
			{-0.10, -0.45, -0.10, 0.11, -0.4, 0.10},  -- body
			{-0.09, -0.5, -0.09, 0.09, -0.45, 0.09},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			
			},
		},
})
