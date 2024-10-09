local function after_place_leaves(...)
	return default.after_place_leaves(...)
end

local function grow_sakura_sapling(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(150, 300))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-2}, minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/atl_server_reworked_biomes_sakura_tree_1.mts", "0", nil, false)
end

minetest.register_node("atl_server_reworked_biomes:sakura_sapling", {
	description = "Sakura Tree Sapling",
	drawtype = "plantlike",
	tiles = {"cherry_biome_sakura_tree_sapling.png"},
	inventory_image = "cherry_biome_sakura_tree_sapling.png",
	wield_image = "cherry_biome_sakura_tree_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sakura_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4/16, -0.5, -4/16, 4/16, 7/16, 4/16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,
	on_place = function(itemstack, placer, pointed_thing)
		return default.sapling_on_place(itemstack, placer, pointed_thing,
			"atl_server_reworked_biomes:sakura_sapling", {x = -3, y = 1, z = -3}, {x = 3, y = 6, z = 3}, 4)
	end,
})

if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"atl_server_reworked_biomes:sakura_sapling", grow_sakura_sapling, "soil"},
	})
end


minetest.register_node("atl_server_reworked_biomes:sakura_leaves", {
	description = "Sakura Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"cherry_biome_sakura_leaves.png"},
	special_tiles = {"cherry_biome_sakura_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {"atl_server_reworked_biomes:sakura_sapling"},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {"atl_server_reworked_biomes:sakura_leaves"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos)
		minetest.get_node_timer(pos):start(5) 

	end,
})

minetest.register_abm({
	label = "Sakura Tree Leaves Particle",
	nodenames = {"atl_server_reworked_biomes:sakura_leaves"},
	interval = 6,
	chance = 24,
	catch_up = false,
	action = function(pos)
		minetest.add_particlespawner({
			amount = 1,
			time = 1,
			minpos = {x = pos.x, y = pos.y, z = pos.z},
			maxpos = {x = pos.x, y = pos.y, z = pos.z},
			minvel = {x = -0.75, y = -0.4, z = -0.75},
			maxvel = {x = 0.75, y = -0.2, z = 0.75},
			minacc = {x = -0.2, y = -0.4, z = -0.2},
			maxacc = {x = 0.2, y = -0.1, z = 0.2},
			minexptime = 8,
			maxexptime = 10,
			minsize = 1.5,
			maxsize = 1.75,
			texture = "cherry_biome_sakura_particul.png",
			collisiondetection = true,
			collision_removal = true,
			vertical = false,
		})
	end,
})


minetest.register_node("atl_server_reworked_biomes:sakura_tree", {
	description = "Sakura Tree",
	tiles = {"cherry_biome_sakura_tree_top.png", "cherry_biome_sakura_tree_top.png", "cherry_biome_sakura_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

default.register_leafdecay({
	trunks = {"atl_server_reworked_biomes:sakura_tree"},
	leaves = {"atl_server_reworked_biomes:sakura_leaves"},
	radius = 3,
})

minetest.register_node("atl_server_reworked_biomes:sakura_wood", {
	description = "Sakura Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"cherry_biome_sakura_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})


stairs.register_stair_and_slab("sakura_wood", "atl_server_reworked_biomes:sakura_wood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"cherry_biome_sakura_wood.png"},
		"Sakura Wood Stair",
		"Sakura Wood Slab",
default.node_sound_wood_defaults())

default.register_fence("atl_server_reworked_biomes:fence_sakura_wood", {
	description = "Sakura Wood Fence",
	texture = "cherry_biome_sakura_wood.png",
	inventory_image = "default_fence_overlay.png^cherry_biome_sakura_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^cherry_biome_sakura_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	material = "ebiomes:sugi_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
	})

default.register_fence_rail("atl_server_reworked_biomes:fence_rail_sakura_wood", {
	description = "Sakura Wood Fence Rail",
	texture = "cherry_biome_sakura_wood.png",
	inventory_image = "default_fence_rail_overlay.png^cherry_biome_sakura_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_rail_overlay.png^cherry_biome_sakura_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "ebiomes:sugi_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
})

default.register_mesepost("atl_server_reworked_biomes:mese_post_light_sakura_wood", {
	description = "Sakura Wood Mese Post Light",
	texture = "cherry_biome_sakura_wood.png",
	material = "atl_server_reworked_biomes:sakura_wood",
})

doors.register_fencegate("atl_server_reworked_biomes:gate_sakura_wood", {
	description = "Sakura Wood Fence Gate",
	texture = "cherry_biome_sakura_wood.png",
	material = "atl_server_reworked_biomes:sakura_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

if minetest.get_modpath("moreblocks") then
	stairsplus:register_all("sakura_tree", "wood", "atl_server_reworked_biomes:sakura_wood", {
		description = "Sakura Wood",
		tiles = {"cherry_biome_sakura_wood.png"},
		groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
		sounds = default.node_sound_wood_defaults(),
	})
end

if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_deco({
		{"default:dirt_with_grass", {"default:grass_1", "default:grass_2", "default:grass_3", "default:grass_4", "default:grass_5"},
			{""} }
	})
end

doors.register_trapdoor("atl_server_reworked_biomes:sakura_trapdoor", {
	description = "Trapdoor In Sakura Wood Planks",
	inventory_image = "cherry_biome_doors_trapdoor_sakura.png",
	wield_image = "cherry_biome_doors_trapdoor_sakura.png",
	tile_front = "cherry_biome_doors_trapdoor_sakura.png",
	tile_side = "cherry_biome_doors_trapdoor_side_sakura.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})

minetest.register_node("atl_server_reworked_biomes:sakura_leaves_on_the_ground", {
	description = "Cherry Blossom on the ground",
	drawtype = "signlike",
	waving = 0,
	tiles = {"cherry_biome_sakura_leaves_on_the_ground.png"},
	inventory_image = "cherry_biome_sakura_leaves_on_the_ground.png",
	wield_image = "cherry_biome_sakura_leaves_on_the_ground.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, oddly_breakable_by_hand=3,
	flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type="wallmounted",
		wall_top = {-0.5, 0.29, -0.5, 0.5, 0.5, 0.5},
		wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.49, 0.5},
		wall_side = {-0.5, -0.5, -0.5, -0.49, 0.5, 0.5},
	},
})

minetest.register_biome({
    name = "sakura_plains",
    node_top = "default:dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 3,
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 6,
    heat_point = 60,
    humidity_point = 40,
    vertical_blend = 8,
})

minetest.register_biome({
    name = "cherry_dunes",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    vertical_blend = 1,
    y_max = 5,
    y_min = 4,
    heat_point = 60,
    humidity_point = 40,
})

minetest.register_biome({
    name = "cherry_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 3,
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    node_cave_liquid = "default:water_source",
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = 3,
    y_min = -255,
    heat_point = 60,
    humidity_point = 40,
})

minetest.register_biome({
    name = "cherry_under",
    node_cave_liquid = {"default:water_source", "default:lava_source"},
    node_dungeon = "default:cobble",
    node_dungeon_alt = "default:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = -256,
    y_min = -31000,
    heat_point = 60,
    humidity_point = 40,
})

minetest.register_decoration({
    name = "sakura_tree_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0.003,
        scale = 0.00000003/6,
        spread = {x = 150, y = 150, z = 150},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"sakura_plains"},
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_sakura_tree_1.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    name = "aspen_tree",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0.005,
        scale = 0.0005,
        spread = {x = 250, y = 250, z = 250},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"sakura_plains"},
    y_max = 18,
    y_min = 3,
    place_offset_y = 0,
    schematic = minetest.get_modpath("default").."/schematics/aspen_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

local decorations = {
    {name = "7", decoration = "flowers:rose", fill_ratio = 0.005, biome = {"cherry_forest"}, place_on = {"default:dirt_with_grass"}},
    {name = "5", decoration = "flowers:tulip", fill_ratio = 0.005, biome = {"cherry_forest"}, place_on = {"default:dirt_with_grass"}},
    {name = "5", decoration = "default:grass_5", fill_ratio = 0.05*2, biome = {"cherry_forest"}, place_on = {"default:dirt_with_grass"}},
    {name = "4", decoration = "default:grass_4", fill_ratio = 0.05*1.75, biome = {"cherry_forest"}, place_on = {"default:dirt_with_grass"}},
    {name = "3", decoration = "default:grass_3", fill_ratio = 0.05*1.5, biome = {"cherry_forest"}, place_on = {"default:dirt_with_grass"}},
    {name = "2", decoration = "default:grass_2", fill_ratio = 0.05, biome = {"cherry_forest"}, place_on = {"default:dirt_with_grass"}},
    {name = "1", decoration = "default:grass_1", fill_ratio = 0.05, biome = {"cherry_forest"}, place_on = {"default:dirt_with_grass"}},
}

for _, deco in ipairs(decorations) do
    minetest.register_decoration({
        name = deco.name,
        deco_type = "simple",
        place_on = deco.place_on,
        sidelen = 16,
        fill_ratio = deco.fill_ratio,
        biomes = deco.biome,
        decoration = deco.decoration
    })
end

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.15,
    biomes = {"sakura_plains"},
    decoration = {
        "atl_server_reworked_biomes:sakura_leaves_on_the_ground"
    }
})

minetest.register_decoration({
    name = "default:dsirt_with_grass",
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0.25,
        scale = 1,
        spread = {x = 250, y = 250, z = 250},
        seed = 21,
        octaves = 3,
        persist = 0.66
    },
    biomes = {"sakura_plains"},
    height = 1,
    y_min = 1,
    y_max = 31000,
    place_offset_y = -1,
    decoration = "default:dirt_with_grass",
    flags = "place_center_x, place_center_z, force_placement",
    rotation = "random",
})

minetest.register_craft({
    type = "fuel",
    recipe = "atl_server_reworked_biomes:sakura_wood",
    burntime = 9,
})

minetest.register_decoration({
    name = "aspen_trees2",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0.005,
        scale = 0.0005,
        spread = {x = 250, y = 250, z = 250},
        seed = 2,
        octaves = 1,
        persist = 0.06
    },
    biomes = {"sakura_plains"},
    y_max = 31000,
    y_min = 1,
    place_offset_y = 0,
    schematic = minetest.get_modpath("default").."/schematics/aspen_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_craft({
    output = "atl_server_reworked_biomes:sakura_wood 4",
    recipe = {
        {"atl_server_reworked_biomes:sakura_tree"},
    }
})