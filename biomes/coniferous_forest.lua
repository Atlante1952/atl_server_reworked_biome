minetest.register_decoration({
    name = "atl_server_reworked_biomes:coniferous_tree_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_coniferous_litter"},
    sidelen = 16,
    noise_params = {
        offset = 0.005,
        scale = 0.01,
        spread = {x = 150, y = 150, z = 150},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"coniferous_forest"},
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_coniferous_tree_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:pine_bush_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_coniferous_litter"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.01275,
    biomes = {"coniferous_forest"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_pine_bush_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:coniferous_little_structure",
    deco_type = "schematic",
    place_on = {"default:dirt_with_coniferous_litter"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.003875,
    biomes = {"coniferous_forest"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_coniferous_little_structure_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:little_pine_tree_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_coniferous_litter"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.008875,
    biomes = {"coniferous_forest"},
    y_max = 31000,
    y_min = 5,
    schematic = minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_little_pine_tree_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:ferns",
    deco_type = "simple",
    place_on = "default:dirt_with_coniferous_litter",
    sidelen = 16,
    fill_ratio = 0.065,
    biomes = "coniferous_forest",
    decoration = {"default:fern_2", "default:fern_3", "atl_server_reworked_biomes:fern_4"}
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes:coniferous_forest_junglegrass",
    deco_type = "simple",
    place_on = "default:dirt_with_coniferous_litter",
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = "coniferous_forest",
    decoration = {"default:junglegrass", "atl_server_reworked_biomes:fern_5"}
})

minetest.register_node("atl_server_reworked_biomes:fern_4", {
    description = "Fern",
    drawtype = "plantlike",
    waving = 1,
    tiles = {"fern_4.png"},
    inventory_image = "fern_4.png",
    wield_image = "fern_4.png",
    paramtype = "light",
    visual_scale = 1.69,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {snappy = 3, flammable = 3, flora = 1, grass = 1, fern = 1, attached_node = 1},
    sounds = default.node_sound_leaves_defaults(),
    selection_box = {
        type = "fixed",
        fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
    },
})

minetest.register_node("atl_server_reworked_biomes:fern_5", {
    description = "Fern",
    drawtype = "plantlike",
    waving = 1,
    tiles = {"fern_5.png"},
    inventory_image = "fern_5.png",
    wield_image = "fern_5.png",
    paramtype = "light",
    visual_scale = 1.1,
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {snappy = 3, flammable = 3, flora = 1, grass = 1, fern = 1, attached_node = 1},
    sounds = default.node_sound_leaves_defaults(),
    selection_box = {
        type = "fixed",
        fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
    },
})
