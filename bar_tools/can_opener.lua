
-- This file supplies can openers

minetest.register_node("nightclub:can_opener", {
	description = "Can opener",
	drawtype = "nodebox",
	tiles = {
		'tool.png', -- up to crank
		'tool.png',  -- down
		'tool_left.png',  -- left side
		'tool_right.png',  -- right side
		'tool_top.png',  -- top
		'tool_bottom.png',  -- handle tips
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
			{-0.1, -0.48, -0.18, 0.1, -0.46, 0},  -- top
			{-0.15, -0.43, -0.1, 0.15, -0.4, -0.125},  -- crank
			{-0.12, -0.5, -0.45, -0.06, -0.44, -0.18},  -- left handle
			{0.12, -0.5, -0.45, 0.06, -0.44, -0.18},  -- right handle
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.4, 0.3},
			},
		},
})
