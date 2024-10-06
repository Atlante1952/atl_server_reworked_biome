minetest.register_decoration({
    name = "atl_server_reworked_biomes:cactus1",
    deco_type = "schematic",
			place_on = {"default:desert_sand"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.015/9,
    biomes = {"desert"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_cactus_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:cactus2",
    deco_type = "schematic",
			place_on = {"default:desert_sand"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.015/9,
    biomes = {"desert"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_cactus_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:cactus3",
    deco_type = "schematic",
			place_on = {"default:desert_sand"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.015/7,
    biomes = {"desert"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_cactus_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:cactus4",
    deco_type = "schematic",
			place_on = {"default:desert_sand"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.015/7,
    biomes = {"desert"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_cactus_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"default:desert_sand"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"desert"},
	decoration = {
		"default:dry_shrub"
	}
})

minetest.register_decoration({
	deco_type = "simple",
			place_on = {"default:desert_sand"},
	sidelen = 32,
	fill_ratio = 0.025,
	biomes = {"desert"},
	decoration = {
		"farming:cotton_8"
	}
})
