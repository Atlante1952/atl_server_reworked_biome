minetest.register_node("atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass", {
	description = "Dirt With Grass And Coniferous Litter",
	tiles = {"atl_server_reworked_biomes_temperate_coniferous_forest_grass.png", "default_dirt.png",
		{name = "default_dirt.png^atl_server_reworked_biomes_temperate_coniferous_forest_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_biome({
    name = "intra_coniferous_forest_dense",
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
    heat_point = 47,
    humidity_point = 63,
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:coniferous_tree_5",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0.005,
        scale = 0.01,
        spread = {x = 150, y = 150, z = 150},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"intra_coniferous_forest_dense"},
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_coniferous_tree_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "pine_bush_11",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.01275,
    biomes = {"intra_coniferous_forest_dense"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("default").."/schematics/pine_bush.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "coniferous_little_structure1",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.003875,
    biomes = {"intra_coniferous_forest_dense"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_coniferous_little_structure_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:coniferous_tree_11",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0.005,
        scale = 0.01,
        spread = {x = 150, y = 150, z = 150},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"intra_coniferous_forest_dense"},
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_coniferous_tree_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:little_pine_tree_11",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.008875,
    biomes = {"intra_coniferous_forest_dense"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_little_pine_tree_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"atl_server_reworked_biomes:temperate_coniferous_forest_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.5,
	biomes = {"intra_coniferous_forest_dense"},
	decoration = {
		"default:fern_2", "default:fern_3",
		"default:grass_3", "default:grass_4",
		"default:grass_5", "atl_server_reworked_biomes:fern_5",
        "atl_server_reworked_biomes:fern_4",
	}
})