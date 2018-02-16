
-- This file supplies tap handles

minetest.register_node("nightclub:tap_handles", {
	description = "Tap handles",
	drawtype = "nodebox",
	tiles = {
		'tap_top.png', -- top
		'back.png',  -- bottom
		'tap.png',  -- side
		'tap.png',  -- side
		'tap.png',  -- back
		'tap.png',  -- front
	},
	paramtype = "light",
	light_source = 4,
	paramtype2 = "facedir",
	buildable_to = true,
	walkable = false,
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1, 0.5,  -0.1, -0.2,  0.1,   -0.15},  -- left handle
			{-0.1, 0.18,  0.0, -0.15, 0.1,   -0.35},  -- left valve
			{-0.1, 0.1,  -0.3, -0.13, 0.036, -0.35},  -- left spigot

			{ 0.1, 0.5,  -0.1, 0.2,  0.1,   -0.15},  -- right handle
			{ 0.1, 0.18,  0.0, 0.15, 0.1,   -0.35},  -- right valve
			{ 0.1, 0.1,  -0.3, 0.13, 0.036, -0.35},  -- right spigot

			{-0.095, -0.47, 0.095, 0.095, 0.15, -0.095}, -- post
			{-0.35,  -0.5,  0.15,  0.35, -0.47, -0.35},  -- footer
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.5, 0.3, 0.5, 0.1},
			},
		},
})
