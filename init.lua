atl_server_reworked_biomes = {}
atl_server_reworked_biomes.modpath = minetest.get_modpath("atl_server_reworked_biomes")

function atl_server_reworked_biomes.load_file(path)
    local status, err = pcall(dofile, path)
    if not status then
        minetest.log("error", "-!- Failed to load file: " .. path .. " - Error: " .. err)
    else
        minetest.log("action", "-!- Successfully loaded file: " .. path)
    end
end

if atl_server_reworked_biomes.modpath then
    local files_to_load = {
        "biomes/grassland.lua",
        "biomes/savanna.lua",
        "biomes/desert.lua",
        "biomes/icesheet.lua",
        "biomes/cold_desert.lua",
        "biomes/sandstone_desert.lua",
        "biomes/snowy_grassland.lua",
        "biomes/taiga.lua",
        "biomes/tundra.lua",
        "biomes/coniferous_forest.lua",
        "biomes/deciduous_forest.lua",
        "biomes/beach.lua",
        "biomes/big_coniferous_forest.lua",
        "biomes/sakura_plains.lua",
        "biomes/intra_jungle.lua",
        "biomes/temperate_coniferous_forest.lua",
        "biomes/bamboo_forest.lua",
        "biomes/charred_land_biome.lua",
        "biomes/tropical_rainforest.lua",
    }

    for _, file in ipairs(files_to_load) do
        atl_server_reworked_biomes.load_file(minetest.get_modpath("atl_server_reworked_biomes") .. "/" .. file)
    end
else
    minetest.log("error", "-!- Files in " .. minetest.get_modpath("atl_server_reworked_biomes") .. " mod are not set or valid.")
end
