
local modname = "atl_server_reworked_biomes"
local modpath = minetest.get_modpath(modname)

minetest.register_node("atl_server_reworked_biomes:charred_dirt_with_grass", {
	description = "Charred Dirt with Grass",
	tiles = {
		"charred_grass.png", 
		"default_dirt.png",
		{name = "default_dirt.png^charred_grass_side.png", tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:coal_lump",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("atl_server_reworked_biomes:fireflower", {
	description = "Fireflower",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fireflower_v2.png"},
	inventory_image = "fireflower_v2.png",
	wield_image = "fireflower_v2.png",
	sunlight_propagates = true,
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, color_red = 1},
	sounds = default.node_sound_leaves_defaults(),
	light_source = 3,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, -0.5 + 0.7, 0.3},
	},
})

local function grow_rowan_sapling(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(150, 300))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-2}, modpath.."/schematics/rowan_tree.mts", "0", nil, false)
end

minetest.register_node("atl_server_reworked_biomes:rowan_sapling", {
	description = "Rowan Tree Sapling",
	drawtype = "plantlike",
	tiles = {"rowan_sapling.png"},
	inventory_image = "rowan_sapling.png",
	wield_image = "rowan_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_rowan_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4/16, -0.5, -4/16, 4/16, 7/16, 4/16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,
	on_place = function(itemstack, placer, pointed_thing)
		return default.sapling_on_place(itemstack, placer, pointed_thing,
			"atl_server_reworked_biomes:rowan_sapling", {x = -3, y = 1, z = -3}, {x = 3, y = 6, z = 3}, 4)
	end,
})

if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"atl_server_reworked_biomes:rowan_sapling", grow_rowan_sapling, "soil"},
	})
	end

minetest.register_node("atl_server_reworked_biomes:rowan_wood", {
	description = "Rowan Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"rowan_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("atl_server_reworked_biomes:rowan_leaves", {
	description = "Rowan Leaves",
	drawtype = "allfaces_optional",
	tiles = {"rowan_leaves.png"},
	wield_image = "rowan_leaves.png",
	paramtype = "light",
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"atl_server_reworked_biomes:rowan_sapling"}, rarity = 10},
			{items = {"atl_server_reworked_biomes:rowan_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

minetest.register_node("atl_server_reworked_biomes:charred_tree", {
	description = "Charred Tree",
	tiles = {"charred_tree_top.png", "charred_tree_top.png", "charred_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

minetest.register_biome({
	name = "charred_land",
	node_top = "atl_server_reworked_biomes:charred_dirt_with_grass",
	depth_top = 1,
	node_filler = "default:stone",
	depth_filler = 3,
	node_riverbed = "default:obsidian",
	depth_riverbed = 2,
	node_dungeon = "default:coalblock",
	node_dungeon_alt = "default:obsidian",
	node_dungeon_stair = "default:coalblock",
	y_max = 15,
	y_min = 3,
	heat_point = 90,
	humidity_point = 10,
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:obsidian",
	deco_type = "simple",
	place_on = {"atl_server_reworked_biomes:charred_dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.25,
		scale = 0.01,
		spread = {x = 250, y = 250, z = 250},
		seed = 21,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"charred_land"},
	height = 1,
	y_min = 1,
	y_max = 31000,
	place_offset_y = -1,
	decoration = "default:obsidian",
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:coalblock",
	deco_type = "simple",
	place_on = {"atl_server_reworked_biomes:charred_dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.25,
		scale = 0.01,
		spread = {x = 250, y = 250, z = 250},
		seed = 21,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"charred_land"},
	height = 1,
	y_min = 1,
	y_max = 31000,
	place_offset_y = -1,
	decoration = "default:coalblock",
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random",
})

minetest.register_decoration({
	name = "rowan_tree",
	deco_type = "schematic",
	place_on = {"atl_server_reworked_biomes:charred_dirt_with_grass", "default:coalblock"},
	sidelen = 16,
	noise_params = {
		offset = 0.005,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"charred_land"},
	y_max = 25,
	y_min = 1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_rowan_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "lt_vulcan",
	deco_type = "schematic",
	place_on = {"atl_server_reworked_biomes:charred_dirt_with_grass", "default:coalblock", "default:obsidian"},
	sidelen = 16,
	noise_params = {
		offset = 0.005,
		scale = 0.0005,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"charred_land"},
	y_max = 18,
	y_min = 3,
	place_offset_y = -1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_lt_vulcan.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})
local decorations = {
	{name = "go4", decoration = "atl_server_reworked_biomes:fireflower", fill_ratio = 0.008, biome = {"charred_land"}, place_on = {"atl_server_reworked_biomes:charred_dirt_with_grass"}},
}

for _, deco in ipairs(decorations) do
    minetest.register_decoration({
        name = deco.name,
        deco_type = "simple",
        place_on = deco.place_on,
        sidelen = 16,
        fill_ratio = deco.fill_ratio,
        biomes = deco.biome,
        decoration = deco.decoration,
    })
end

default.register_leafdecay({
	trunks = {"atl_server_reworked_biomes:charred_tree"},
	leaves = {"atl_server_reworked_biomes:rowan_leaves"},
	radius = 3,
})

minetest.register_craft({
	output = "atl_server_reworked_biomes:rowan_wood 4",
	recipe = {
		{"atl_server_reworked_biomes:charred_tree"},
	}
})

stairs.register_stair_and_slab("rowan_wood", "atl_server_reworked_biomes:rowan_wood",
{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
{"rowan_wood.png"},
"Charred Wood Stair",
"Charred Wood Slab",
default.node_sound_wood_defaults())

default.register_fence("atl_server_reworked_biomes:fence_rowan_wood", {
description = "Charred Wood Fence",
texture = "rowan_wood.png",
inventory_image = "default_fence_overlay.png^rowan_wood.png^" ..
			"default_fence_overlay.png^[makealpha:255,126,126",
wield_image = "default_fence_overlay.png^rowan_wood.png^" ..
			"default_fence_overlay.png^[makealpha:255,126,126",
material = "atl_server_reworked_biomes:rowan_wood",
groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
sounds = default.node_sound_wood_defaults()
})

default.register_fence_rail("atl_server_reworked_biomes:fence_rail_rowan_wood", {
description = "Charred Wood Fence Rail",
texture = "rowan_wood.png",
inventory_image = "default_fence_rail_overlay.png^rowan_wood.png^" ..
			"default_fence_rail_overlay.png^[makealpha:255,126,126",
wield_image = "default_fence_rail_overlay.png^rowan_wood.png^" ..
			"default_fence_rail_overlay.png^[makealpha:255,126,126",
material = "atl_server_reworked_biomes:rowan_wood",
groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
sounds = default.node_sound_wood_defaults()
})

default.register_mesepost("atl_server_reworked_biomes:mese_post_lightrowan_wood", {
description = "Charred Wood Mese Post Light",
texture = "rowan_wood.png",
material = "atl_server_reworked_biomes:rowan_wood",
})

doors.register_fencegate("atl_server_reworked_biomes:gate_rowan_wood", {
description = "Charred Wood Fence Gate",
texture = "rowan_wood.png",
material = "atl_server_reworked_biomes:rowan_wood",
groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

minetest.register_craft({
type = "fuel",
recipe = "atl_server_reworked_biomes:rowan_wood",
burntime = 9,
})

if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_deco({
		{"atl_server_reworked_biomes:charred_dirt_with_grass", {},
			{"atl_server_reworked_biomes:fireflower", "", "", "", ""} }
	})
end

if minetest.global_exists("flowerpot") then
	flowerpot.register_node("atl_server_reworked_biomes:fireflower")
	flowerpot.register_node("atl_server_reworked_biomes:rowan_sapling")
end