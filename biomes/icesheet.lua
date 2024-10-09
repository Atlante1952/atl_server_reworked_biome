minetest.register_decoration({
	name = "atl_server_reworked_biomes:icehseet_pine_tree_2",
	deco_type = "schematic",
	place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0.0010,
		scale = 0.0018,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"icesheet"},
	y_max = 31000,
	y_min = 4,
	schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_pine_tree_2.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:ice_tower_1",
    deco_type = "schematic",
    place_on = {"default:snowblock"},
    place_offset_y = 0,
    sidelen = 32,
    fill_ratio = 0.001265,
    biomes = {"icesheet"},
    y_max = 31000,
    y_min = -4,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_ice_tower_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:ice_tower_2",
    deco_type = "schematic",
    place_on = {"default:snowblock"},
    place_offset_y = 0,
    sidelen = 32,
    fill_ratio = 0.001265,
    biomes = {"icesheet"},
    y_max = 31000,
    y_min = -4,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_ice_tower_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:ice_tower_3",
    deco_type = "schematic",
    place_on = {"default:snowblock"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"icesheet"},
    y_max = 31000,
    y_min = -4,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_ice_tower_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:snow",
    deco_type = "simple",
    place_on = "default:snowblock",
    sidelen = 16,
    fill_ratio = 0.25,
    biomes = {"icesheet_ocean", "icesheet"},
    decoration = "default:snow"
})