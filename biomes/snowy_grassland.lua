minetest.register_decoration({
    name = "atl_server_reworked_biomes:snowy_biome_ice_tower_1",
    deco_type = "schematic",
    place_on = {"default:snow", "default:dirt_with_snow", "default:snowblock", "default:sand"},
    place_offset_y = 0,
    sidelen = 32,
    fill_ratio = 0.001265,
    biomes = {"snowy_grassland"},
    y_max = 25,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_ice_tower_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:snowy_biome_ice_tower_1",
    deco_type = "schematic",
    place_on = {"default:snow", "default:dirt_with_snow", "default:snowblock", "default:sand"},
    place_offset_y = 0,
    sidelen = 32,
    fill_ratio = 0.001265,
    biomes = {"snowy_grassland"},
    y_max = 35,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_ice_tower_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:snowy_biome_ice_tower_1",
    deco_type = "schematic",
    place_on = {"default:snow", "default:dirt_with_snow", "default:snowblock", "default:sand"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"snowy_grassland"},
    y_max = 60,
    y_min = 1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_ice_tower_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:snowy_biome_pine_tree_1",
    deco_type = "schematic",
    place_on = {"default:snow", "default:dirt_with_snow", "default:snowblock", "default:sand"},
    place_offset_y = 0,
    sidelen = 32,
    fill_ratio = 0.002265,
    biomes = {"snowy_grassland"},
    y_max = 100,
    y_min = 1,
    schematic = minetest.get_modpath("default").."/schematics/pine_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})
