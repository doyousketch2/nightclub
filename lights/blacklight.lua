
-- This file supplies blacklights

-- fluorescent tubes 
-- on ceiling

minetest.register_node('nightclub:blacklight', {
	description = ("Blacklight"),
	drawtype = "nodebox",
	tiles = {
		'back.png', -- top
		'blacklight.png',  -- bottom
		'back.png',  -- ends
		'back.png',  -- ends
		'blacklight_sides.png',  -- side
		'blacklight_sides.png',  -- side
	},
        node_box = {
                type = "fixed",
                fixed = {
			{ -0.48, 0.35, -0.3, 0.48, 0.5, -0.2 },
			{ -0.48, 0.35, 0.3, 0.48, 0.5, 0.2 },
        	},
	},

        selection_box = {
                type = "fixed",
                fixed = {
			{ -0.48, 0.35, -0.3, 0.48, 0.5, 0.3 },
        	},
	},

	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_glass_defaults(),
	buildable_to = true,
	groups = { snappy = 3 },
	light_source = 9,
	on_place = function(itemstack, placer, pointedg)

		local node = minetest.env:get_node(pointedg.under)
		if not minetest.registered_nodes[node.name] or not minetest.registered_nodes[node.name].on_rightclick then

			local above = pointedg.above
			local under = pointedg.under
			local pitch = placer:get_look_pitch()
			local node = minetest.env:get_node(above)

			if node.name ~= "air" then return end

			if above.x ~= under.x or above.z ~= under.z then 
				local fdir = minetest.dir_to_facedir(placer:get_look_dir())
				minetest.env:add_node(above, {name = 'nightclub:blacklight_wall', param2 = fdir})
			else
				local fdir = minetest.dir_to_facedir(placer:get_look_dir())
				minetest.env:add_node(above, {name = 'nightclub:blacklight', param2 = fdir})
			end
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return minetest.item_place_node(itemstack, placer, pointedg)
		else
			minetest.registered_nodes[node.name].on_rightclick(pointedg.under, node, placer)
		end
	end
})

-- fluorescent tubes 
-- on wall

minetest.register_node('nightclub:blacklight_wall', {
	description = ("Blacklight on wall"),
	drawtype = "nodebox",
	tiles = {
		'blacklight_sides.png', -- top
		'blacklight_sides.png',  -- bottom
		'back.png', -- ends
		'back.png',  -- ends
		'back.png',  -- back
		'blacklight.png',  -- front
	},
        node_box = {
                type = "fixed",
                fixed = {
			{ -0.48, 0.3, 0.35, 0.48, 0.2, 0.5 },
			{ -0.48, -0.3, 0.35, 0.48, -0.2, 0.5 },
        	},
	},
        selection_box = {
                type = "fixed",
                fixed = {
			{ -0.48, -0.3, 0.35, 0.48, 0.3, 0.5 },
        	},
	},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_glass_defaults(),
	buildable_to = true,
	groups = { snappy = 3, not_in_creative_inventory=1 },
	light_source = 9,
	on_place = function(itemstack, placer, pointedg)

		local node = minetest.env:get_node(pointedg.under)
		if not minetest.registered_nodes[node.name] or not minetest.registered_nodes[node.name].on_rightclick then

			local above = pointedg.above
			local under = pointedg.under
			local pitch = placer:get_look_pitch()
			local node = minetest.env:get_node(above)

			if node.name ~= "air" then return end

			if above.x ~= under.x or above.z ~= under.z then 
				local fdir = minetest.dir_to_facedir(placer:get_look_dir())
				minetest.env:add_node(above, {name = 'nightclub:blacklight_wall', param2 = fdir})
			else
				local fdir = minetest.dir_to_facedir(placer:get_look_dir())
				minetest.env:add_node(above, {name = 'nightclub:blacklight', param2 = fdir})
			end
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return minetest.item_place_node(itemstack, placer, pointedg)
		else
			minetest.registered_nodes[node.name].on_rightclick(pointedg.under, node, placer)
		end
	end,
	drop = 'nightclub:blacklight'
})

-- bulbs on ceiling

minetest.register_node('nightclub:blacklight_bulb', {
	description = ("Blacklight bulb"),
	drawtype = "nodebox",
	tiles = {
		'blacklight_bulb_back.png', -- top
		'blacklight.png',  -- bottom
		'blacklight.png',  -- side
		'blacklight.png',  -- side
		'blacklight.png',  -- side
		'blacklight.png',  -- side
	},
        node_box = {
                type = "fixed",
                fixed = {
			{ -0.062, 0.35, -0.062, 0.062, 0.5, 0.062 },
			{ -0.1, 0.35, -0.1, 0.1, 0.2, 0.1 },
			{ -0.15, 0.2, -0.15, 0.15, -0.1, 0.15 },
        	},
	},
        selection_box = {
                type = "fixed",
                fixed = {
			{ -0.3, -0.2, -0.3, 0.3, 0.5, 0.3 },
        	},
	},

	sunlight_propagates = false,
	paramtype = "light",
	sounds = default.node_sound_glass_defaults(),
	buildable_to = true,
	walkable = false,
	groups = { snappy = 3 },
	light_source = 9,
	on_place = function(itemstack, placer, pointedg)

		local node = minetest.env:get_node(pointedg.under)
		if not minetest.registered_nodes[node.name] or not minetest.registered_nodes[node.name].on_rightclick then

			local above = pointedg.above
			local under = pointedg.under
			local pitch = placer:get_look_pitch()
			local node = minetest.env:get_node(above)

			if node.name ~= "air" then return end

			if above.x ~= under.x or above.z ~= under.z then
				local fdir = minetest.dir_to_facedir(placer:get_look_dir())
				minetest.env:add_node(above, {name = 'nightclub:blacklight_bulb_wall', param2 = fdir})
			else
				minetest.env:add_node(above, {name = 'nightclub:blacklight_bulb'})
			end
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return minetest.item_place_node(itemstack, placer, pointedg)
		else
			minetest.registered_nodes[node.name].on_rightclick(pointedg.under, node, placer)
		end
	end
})

-- bulbs on wall

minetest.register_node('nightclub:blacklight_bulb_wall', {
	description = ("Blacklight bulb, on wall"),
	drawtype = "nodebox",
	tiles = {
		'blacklight.png',  -- top
		'blacklight.png',  -- bottom
		'blacklight.png',  -- side
		'blacklight.png',  -- side
		'blacklight_bulb_back.png',  -- back
		'blacklight.png',  -- front
	},
        node_box = {
                type = "fixed",
                fixed = {
			{ -0.062, -0.062, 0.35, 0.062, 0.062, 0.5 },
			{ -0.1, -0.1, 0.35, 0.1, 0.1, 0.2 },
			{ -0.15, -0.15, 0.2, 0.15, 0.15, -0.1 },
        	},
	},
        selection_box = {
                type = "fixed",
                fixed = {
			{ -0.3, -0.3, -0.2, 0.3, 0.3, 0.5 },
        	},
	},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_glass_defaults(),
	buildable_to = true,
	walkable = false,
	groups = { snappy = 3, not_in_creative_inventory=1 },
	light_source = 9,
	on_place = function(itemstack, placer, pointedg)

		local node = minetest.env:get_node(pointedg.under)
		if not minetest.registered_nodes[node.name] or not minetest.registered_nodes[node.name].on_rightclick then

			local above = pointedg.above
			local under = pointedg.under
			local pitch = placer:get_look_pitch()
			local node = minetest.env:get_node(above)

			if node.name ~= "air" then return end

			if above.x ~= under.x or above.z ~= under.z then 
				local fdir = minetest.dir_to_facedir(placer:get_look_dir())
				minetest.env:add_node(above, {name = 'nightclub:blacklight_bulb_wall', param2 = fdir})
			else
				minetest.env:add_node(above, {name = 'nightclub:blacklight_bulb'})
			end
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return minetest.item_place_node(itemstack, placer, pointedg)
		else
			minetest.registered_nodes[node.name].on_rightclick(pointedg.under, node, placer)
		end
	end,
	drop = 'nightclub:blacklight_bulb'
})

