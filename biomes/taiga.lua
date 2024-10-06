
minetest.register_decoration({
	name = "atl_server_reworked_biomes:pine_tree_1",
	deco_type = "schematic",
	place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0.010,
		scale = 0.0048,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"taiga", "coniferous_forest"},
	y_max = 31000,
	y_min = 4,
	schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_pine_tree_1.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:pine_tree_2",
	deco_type = "schematic",
	place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0.010,
		scale = 0.0048,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"taiga", "coniferous_forest"},
	y_max = 31000,
	y_min = 4,
	schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_pine_tree_2.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:junglegrass",
    deco_type = "simple",
	place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
    sidelen = 16,
    fill_ratio = 0.05,
	biomes = {"taiga", "coniferous_forest"},
    decoration = {"default:junglegrass", "default:fern_3", "default:pine_needles"}
})