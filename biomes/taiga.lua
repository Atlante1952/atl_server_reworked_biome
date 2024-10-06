minetest.register_decoration({
    name = "atl_server_reworked_biomes:junglegrass",
    deco_type = "simple",
	place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
    sidelen = 16,
    fill_ratio = 0.05,
	biomes = {"taiga"},
    decoration = {"default:junglegrass", "default:fern_3", "default:pine_needles"}
})