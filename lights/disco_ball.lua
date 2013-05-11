
-- This file supplies disco balls

minetest.register_node("nightclub:disco_ball", {
	description = "Disco Ball",
	drawtype = "nodebox",
	tiles = {
		{name="disco_ball_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	paramtype = "light",
	light_source = 13,
	buildable_to = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			--chain
			{-0.05, 0.5, -0.05, 0.05, 0.3, 0.05},
			--top
			{-0.2, 0.3, -0.2, 0.2, 0.2, 0.2},
			--mid
			{-0.3, 0.2, -0.3, 0.3, -0.3, 0.3},
			{-0.35, 0, -0.35, 0.35, -0.1, 0.35},
			--bottom
			{-0.2, -0.4, -0.2, 0.2, -0.3, 0.2},
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			--top
			{-0.2, 0.2, -0.2, 0.2, 0.1, 0.2},
			--mid
			{-0.3, 0.1, -0.3, 0.3, -0.4, 0.3},
			{-0.4, -0.2, -0.4, 0.4, 0, 0.4},
			--bottom
			{-0.2, -0.5, -0.2, 0.2, -0.4, 0.2},
			},
		},
	})
