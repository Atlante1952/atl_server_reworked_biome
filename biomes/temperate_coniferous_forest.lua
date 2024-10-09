minetest.register_biome({
    name = "temperate_coniferous_forest",
    node_top = "atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 3,
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 6,
    heat_point = 42,
    humidity_point = 55,
})

minetest.register_biome({
    name = "temperate_coniferous_forest_dunes",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 3,
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    vertical_blend = 1,
    y_max = 5,
    y_min = 4,
    heat_point = 42,
    humidity_point = 55,
})

minetest.register_biome({
    name = "temperate_coniferous_forest_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 3,
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    node_cave_liquid = "default:water_source",
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = 3,
    y_min = -255,
    heat_point = 42,
    humidity_point = 55,
})

minetest.register_biome({
    name = "temperate_coniferous_forest_under",
    node_cave_liquid = {"default:water_source", "default:lava_source"},
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = -256,
    y_min = -31000,
    heat_point = 42,
    humidity_point = 55,
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"temperate_coniferous_forest"},
	decoration = {
		"flowers:mushroom_brown", "flowers:mushroom_red",
	}
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.15,
	biomes = {"temperate_coniferous_forest"},
	decoration = {
		"default:grass_1", "default:grass_3",
		"default:grass_2", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
	name = "saspen_tree",
	deco_type = "schematic",
	place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.005,
		scale = 0.0005,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"temperate_coniferous_forest"},
	y_max = 100,
	y_min = 3,
	place_offset_y = 0,
	schematic = minetest.get_modpath("default").."/schematics/aspen_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "spine_tree",
	deco_type = "schematic",
	place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.005,
		scale = 0.0005,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"temperate_coniferous_forest"},
	y_max = 100,
	y_min = 3,
	place_offset_y = 0,
	schematic = minetest.get_modpath("default").."/schematics/pine_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
	name = "tree",
	deco_type = "schematic",
	place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.005,
		scale = 0.0005,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"temperate_coniferous_forest"},
	y_max = 100,
	y_min = 3,
	place_offset_y = 0,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/grassland_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})