minetest.register_decoration({
	name = "atl_server_reworked_biomes:permafrost_dead_tree_1",
	deco_type = "schematic",
	place_on = {"default:permafrost_with_stones"},
	sidelen = 16,
	noise_params = {
		offset = 0.0008,
		scale = 0.0013,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tundra"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_permafrost_dead_tree_1.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:permafrost_dead_tree_2",
	deco_type = "schematic",
	place_on = {"default:permafrost_with_stones"},
	sidelen = 16,
	noise_params = {
		offset = 0.0010,
		scale = 0.0028,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tundra"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_permafrost_dead_tree_2.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:tundra_grass",
    deco_type = "simple",
    place_on = "default:permafrost_with_moss",
    sidelen = 16,
    fill_ratio = 0.25,
    biomes = "tundra",
    decoration = {"default:junglegrass", "default:dry_shrub"}
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:tundra_grass82",
    deco_type = "simple",
    place_on = "default:permafrost_with_stones",
    sidelen = 16,
    fill_ratio = 0.008,
    biomes = "tundra",
    decoration = {"default:dry_shrub"}
})