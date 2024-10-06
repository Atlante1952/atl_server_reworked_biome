minetest.register_decoration({
	name = "atl_server_reworked_biomes:dead_tree_1",
	deco_type = "schematic",
	place_on = {"default:silver_sand"},
	sidelen = 16,
	noise_params = {
		offset = 0.005/1.5,
		scale = 0.003/1.5,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"cold_desert"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_dead_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:dead_tree_2",
	deco_type = "schematic",
	place_on = {"default:silver_sand"},
	sidelen = 16,
	noise_params = {
		offset = 0.005/1.5,
		scale = 0.003/1.5,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"cold_desert"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_dead_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:dead_tree_3",
	deco_type = "schematic",
	place_on = {"default:silver_sand"},
	sidelen = 16,
	noise_params = {
		offset = 0.005/1.5,
		scale = 0.003/1.5,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"cold_desert"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_dead_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:dead_tree_4",
	deco_type = "schematic",
	place_on = {"default:silver_sand"},
	sidelen = 16,
	noise_params = {
		offset = 0.005/1.5,
		scale = 0.003/1.5,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"cold_desert"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_dead_tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"default:silver_sand"},
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"cold_desert"},
	decoration = {
		"default:acacia_bush_stem"
	}
})
