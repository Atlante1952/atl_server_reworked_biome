minetest.register_decoration({
    name = "atl_server_reworked_biomes:palm_tree_1",
    deco_type = "schematic",
    place_on = {"default:sand"},
    sidelen = 16,
    noise_params = {
        offset = 0.001,
        scale = 0.001,
        spread = {x = 250, y = 250, z = 250},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"sandstone_desert"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_palm_tree_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:dunes_1",
    deco_type = "schematic",
    place_on = {"default:sand"},
    sidelen = 32,
    noise_params = {
        offset = 0.001,
        scale = 0.001,
        spread = {x = 150, y = 150, z = 150},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"sandstone_desert"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_dunes_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"default:sand"},
	sidelen = 16,
	fill_ratio = 0.06,
	biomes = {"sandstone_desert"},
	decoration = {
		"default:dry_shrub"
	}
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"default:sand"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"sandstone_desert"},
	decoration = {
		"default:marram_grass_3", "default:marram_grass_2"
	}
})