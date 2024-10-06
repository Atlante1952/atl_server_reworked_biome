minetest.register_decoration({
    name = "atl_server_reworked_biomes:apple_tree",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0.004,
        scale = 0.003,
        spread = {x = 250, y = 250, z = 250},
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = {"grassland"},
    y_max = 31000,
    y_min = -1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_apple_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:apple_big_tree",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 25,
    noise_params = {
        offset = 0.002,
        scale = 0.001,
        spread = {x = 250, y = 250, z = 250},
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = {"grassland"},
    y_max = 31000,
    y_min = -1,
    schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_apple_big_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:apple_bush",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = {x = 100, y = 100, z = 100},
        seed = 237,
        octaves = 3,
        persist = 0.7,
    },
    biomes = {"grassland"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_apple_bush.mts",
    flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:grass",
    deco_type = "simple",
    place_on = "default:dirt_with_grass",
    sidelen = 16,
    fill_ratio = 0.25,
    biomes = "grassland",
    decoration = "default:grass_3", "default:grass_4", "default:grass_5"
})