minetest.register_decoration({
	name = "atl_server_reworked_biomes:big_acacia_1",
	deco_type = "schematic",
	place_on = {"default:dry_dirt_with_dry_grass"},
	sidelen = 32,
	noise_params = {
		offset = 0.005/8,
		scale = 0.003/5,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"savanna"},
	y_max = 31000,
	y_min = 5,
	schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_big_acacia_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:acacia_1",
	deco_type = "schematic",
	place_on = {"default:dry_dirt_with_dry_grass"},
	sidelen = 22,
	noise_params = {
		offset = 0.005/5,
		scale = 0.003/5,
		spread = {x = 150, y = 150, z = 150},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"savanna"},
	y_max = 31000,
	y_min = 5,
	schematic = minetest.get_modpath("default").."/schematics/acacia_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "atl_server_reworked_biomes:acacia_bush",
	deco_type = "schematic",
	place_on = {"default:dry_dirt_with_dry_grass"},
	sidelen = 12,
	noise_params = {
		offset = 0.005,
		scale = 0.003,
		spread = {x = 150, y = 150, z = 150},
		seed = 2,
		octaves = 1,
		persist = 0.06
	},
	biomes = {"savanna"},
	y_max = 31000,
	y_min = 5,
	schematic = minetest.get_modpath("default").."/schematics/acacia_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"default:dry_dirt_with_dry_grass"},
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"savanna"},
	decoration = {
		"default:dry_shrub", "farming:cotton_wild"
	}
})

