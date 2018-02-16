
-- This file supplies towels

minetest.register_node("nightclub:towel", {
	description = "towel",
	drawtype = "nodebox",
	tiles = {
		'towel.png', -- top
		'back.png',  -- bottom
		'towel_side.png',  -- side
		'towel_side.png',  -- side
		'towel.png',  -- back
		'towel.png',  -- front
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
			{-0.35, 0.45, 0.35, -0.3, 0.4, 0.5},  -- left towel rack bracket
			{0.35, 0.45, 0.35, 0.3, 0.4, 0.5},  -- right towel rack bracket
			{-0.3, 0.41, 0.37, 0.3, 0.43, 0.4},  -- towel rack

			{-0.218, 0.44, 0.34, 0.218, 0.1, 0.37},  -- towel front
			{-0.218, 0.45, 0.37, 0.218, 0.43, 0.4},  -- towel top
			{-0.218, 0.44, 0.4, 0.218, 0.1, 0.43},  -- towel back
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.4, 0.45, 0.3, 0.4, 0, 0.5},
			},
		},
})
