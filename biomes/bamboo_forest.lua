minetest.register_biome({ -- -590 25 960 -- 10450176976014804059
    name = "bamboo_forest",
	node_top = "atl_server_reworked_biomes:dirt_with_bamboo_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 3,
	node_riverbed = "default:sand",
	depth_riverbed = 3,
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
    heat_point = 89,
    humidity_point = 77,
})

minetest.register_biome({
	name = "bamboo_dunes",
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
    heat_point = 89,
    humidity_point = 77,
})

minetest.register_biome({
	name = "bamboo_ocean",
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
    heat_point = 89,
    humidity_point = 77,
})

minetest.register_biome({
	name = "bamboo_under",
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = -256,
	y_min = -31000,
    heat_point = 89,
    humidity_point = 77,
})


minetest.register_decoration({
    name = "atl_server_reworked_biomes:jungle_tree",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.007565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes_bamboo_tree_1",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_bamboo_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes_bamboo_tree_2",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_bamboo_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes_bamboo_tree_3",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_bamboo_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes_bamboo_tree_4",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_bamboo_tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes_bamboo_tree_5",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_bamboo_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes_bamboo_tree_6",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_bamboo_tree_6.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "atl_server_reworked_biomes_bamboo_tree_7",
    deco_type = "schematic",
    place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("atl_server_reworked_biomes").."/schematics/atl_server_reworked_biomes_bamboo_tree_7.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


local function register_decoration(def)
    def.place_on = {"atl_server_reworked_biomes:dirt_with_bamboo_grass"}
    def.sidelen = 16
    def.biomes = {"bamboo_forest"}
    minetest.register_decoration(def)
end

local simple_decorations = {
    {name = "go1", decoration = "atl_server_reworked_biomes:bamboo_grass_5", fill_ratio = 0.1},
    {name = "go2", decoration = "atl_server_reworked_biomes:bamboo_grass_4", fill_ratio = 0.1},
    {name = "go3", decoration = "atl_server_reworked_biomes:bamboo_grass_3", fill_ratio = 0.002},
}

for _, deco in ipairs(simple_decorations) do
    register_decoration({
        name = deco.name,
        deco_type = "simple",
        fill_ratio = deco.fill_ratio,
        decoration = deco.decoration,
    })
end


local modname = "atl_server_reworked_biomes"

local function register_node(name, def)
    minetest.register_node(modname .. ":" .. name, def)
end

register_node("bamboo_grass_1", {
    description = "Bamboo Grass",
    drawtype = "plantlike",
    waving = 1,
    tiles = {"bamboo_grass_1.png"},
    inventory_image = "bamboo_grass_3.png",
    wield_image = "bamboo_grass_3.png",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, normal_grass = 1, flammable = 1},
    sounds = default.node_sound_leaves_defaults(),
    selection_box = {type = "fixed", fixed = {-6/16, -0.5, -6/16, 6/16, -5/16, 6/16}},
    on_place = function(itemstack, placer, pointed_thing)
        local stack = ItemStack("atl_server_reworked_biomes:bamboo_grass_" .. math.random(1, 5))
        local ret = minetest.item_place(stack, placer, pointed_thing)
        return ItemStack("atl_server_reworked_biomes:bamboo_grass_1 " .. itemstack:get_count() - (1 - ret:get_count()))
    end,
})

for i = 2, 5 do
    register_node("bamboo_grass_" .. i, {
        description = "Grass",
        drawtype = "plantlike",
        waving = 1,
        tiles = {"bamboo_grass_" .. i .. ".png"},
        inventory_image = "bamboo_grass_" .. i .. ".png",
        wield_image = "bamboo_grass_" .. i .. ".png",
        paramtype = "light",
        sunlight_propagates = true,
        walkable = false,
        buildable_to = true,
        drop = "atl_server_reworked_biomes:bamboo_grass_3",
        groups = {snappy = 3, flora = 1, attached_node = 1, not_in_creative_inventory = 1, grass = 1, normal_grass = 1, flammable = 1},
        sounds = default.node_sound_leaves_defaults(),
        selection_box = {type = "fixed", fixed = {-6/16, -0.5, -6/16, 6/16, -3/16, 6/16}},
    })
end

local function after_place_leaves(...)
	return default.after_place_leaves(...)
end

minetest.register_node("atl_server_reworked_biomes:bamboo_wood", {
	description = "Bamboo Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"atl_server_reworked_biomes_bamboo_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

stairs.register_stair_and_slab("bamboo_wood", "atl_server_reworked_biomes:bamboo_wood",
     {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	{"atl_server_reworked_biomes_bamboo_wood.png"},
	"Bamboo Wood Stair",
	"Bamboo Wood Slab",
	default.node_sound_wood_defaults()
)

minetest.register_node("atl_server_reworked_biomes:dirt_with_bamboo_grass", {
	description = "Dirt with Bamboo Grass",
	tiles = {"atl_server_reworked_biomes_bamboo_grass.png", "default_dirt.png",
		{name = "default_dirt.png^atl_server_reworked_biomes_bamboo_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("atl_server_reworked_biomes:bamboo_glass", {
	description = "Glass With Bamboo",
	drawtype = "allfaces",
	tiles = {"atl_server_reworked_biomes_bamboo_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("atl_server_reworked_biomes:bamboo_block", {
	description = "Bamboo Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"atl_server_reworked_biomes_bamboo_block.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

stairs.register_stair_and_slab("bamboo_block", "atl_server_reworked_biomes:bamboo_block",
     {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	{"atl_server_reworked_biomes_bamboo_block.png"},
	"Bamboo Block Stair",
	"Bamboo Block Slab",
	default.node_sound_wood_defaults()
)

doors.register_trapdoor("atl_server_reworked_biomes:bamboo_trapdoor", {
	description = "Bamboo Trapdoor",
	inventory_image = "atl_server_reworked_biomes_bamboo_trapdoor.png",
	wield_image = "atl_server_reworked_biomes_bamboo_trapdoor.png",
	tile_front = "atl_server_reworked_biomes_bamboo_trapdoor.png",
	tile_side = "atl_server_reworked_biomes_bamboo_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})



doors.register("bamboo_door", {
		tiles = {{ name = "atl_server_reworked_biomes_doors_bamboo_door.png", backface_culling = true }},
		description = "Bamboo Door",
		inventory_image = "atl_server_reworked_biomes_bamboo_door_item.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"atl_server_reworked_biomes:fiber_bamboo", "atl_server_reworked_biomes:bamboo_wood"},
			{"atl_server_reworked_biomes:bamboo_wood", "atl_server_reworked_biomes:fiber_bamboo"},
			{"atl_server_reworked_biomes:fiber_bamboo", "atl_server_reworked_biomes:bamboo_wood"},
		}
})


default.register_fence("atl_server_reworked_biomes:fence_bamboo_wood", {
	description = "Bamboo Wood Fence",
	texture = "atl_server_reworked_biomes_bamboo_wood.png",
	inventory_image = "default_fence_overlay.png^atl_server_reworked_biomes_bamboo_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^atl_server_reworked_biomes_bamboo_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	material = "atl_server_reworked_biomes:bamboo_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
})

	default.register_fence_rail("atl_server_reworked_biomes:fence_rail_bamboo_wood", {
		description = "Bamboo Wood Fence Rail",
		texture = "atl_server_reworked_biomes_bamboo_wood.png",
		inventory_image = "default_fence_rail_overlay.png^atl_server_reworked_biomes_bamboo_wood.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^atl_server_reworked_biomes_bamboo_wood.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "atl_server_reworked_biomes:bamboo_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

doors.register_fencegate("atl_server_reworked_biomes:gate_bamboo_wood", {
	description = "Bamboo Wood Fence Gate",
	texture = "atl_server_reworked_biomes_bamboo_wood.png",
	material = "atl_server_reworked_biomes:bamboo_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("atl_server_reworked_biomes:fence_bamboo_block", {
		description = "Bamboo Wood Fence",
		texture = "atl_server_reworked_biomes_bamboo_block.png",
		inventory_image = "default_fence_overlay.png^atl_server_reworked_biomes_bamboo_block.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^atl_server_reworked_biomes_bamboo_block.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "atl_server_reworked_biomes:bamboo_block",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("atl_server_reworked_biomes:fence_rail_bamboo_block", {
		description = "Bamboo Wood Fence Rail",
		texture = "atl_server_reworked_biomes_bamboo_block.png",
		inventory_image = "default_fence_rail_overlay.png^atl_server_reworked_biomes_bamboo_block.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^atl_server_reworked_biomes_bamboo_block.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "atl_server_reworked_biomes:bamboo_block",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

doors.register_fencegate("atl_server_reworked_biomes:gate_bamboo_block", {
	description = "Bamboo Block Fence Gate",
	texture = "atl_server_reworked_biomes_bamboo_block.png",
	material = "atl_server_reworked_biomes:bamboo_block",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

minetest.register_node("atl_server_reworked_biomes:bamboo", {
	description = "Bamboo",
	drawtype = "plantlike",
	tiles = {"atl_server_reworked_biomes_bamboo.png"},
	inventory_image = "atl_server_reworked_biomes_bamboo.png",
	wield_image = "atl_server_reworked_biomes_bamboo.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	drop = {
		max_items = 1,
		items = {
			{items = {"atl_server_reworked_biomes:bamboo_sprout"}, rarity = 20},
			{items = {"atl_server_reworked_biomes:bamboo"}}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.10, -0.5, -0.10, 0.10, 0.5, 0.10}
	},
        collision_box = {
            type = "fixed",
		fixed = {-0.10, -0.5, -0.10, 0.10, 0.5, 0.10}
        },
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end

})

minetest.register_node("atl_server_reworked_biomes:bamboo_leaves", {
	description = "Bamboo Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"atl_server_reworked_biomes_bamboo_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"atl_server_reworked_biomes:bamboo_leaves_sprout"}, rarity = 20},
			{items = {"atl_server_reworked_biomes:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

default.register_leafdecay({
	trunks = {"atl_server_reworked_biomes:bamboo"},
	leaves = {"atl_server_reworked_biomes:bamboo_leaves"},
	radius = 7,
})

if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("bamboo_wood", "wood", "atl_server_reworked_biomes:bamboo_wood", {
		description = "Bamboo Wood",
		tiles = {"atl_server_reworked_biomes_bamboo_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("bamboo_glass", "glass", "atl_server_reworked_biomes:bamboo_glass", {
		description = "Bamboo Glass",
		tiles = {"atl_server_reworked_biomes_bamboo_glass.png"},
    	groups = {cracky = 3, oddly_breakable_by_hand = 3},
    	sounds = default.node_sound_glass_defaults(),
	})

	stairsplus:register_all("bamboo_block", "wood", "atl_server_reworked_biomes:bamboo_block", {
		description = "Bamboo Block",
		tiles = {"atl_server_reworked_biomes_bamboo_block.png"},
	    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})
end

local function grow_new_bamboo_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "atl_server_reworked_biomes_bamboo_tree_" .. math.random(1, 7) .. ".mts"
	minetest.place_schematic({x = pos.x - 0, y = pos.y, z = pos.z - 0}, minetest.get_modpath("atl_server_reworked_biomes") .. "/schematics/" .. random_tree, "0", nil, false)
end

minetest.register_node("atl_server_reworked_biomes:bamboo_sprout", {
	description = "Bamboo Sprout",
	drawtype = "plantlike",
	tiles = {"atl_server_reworked_biomes_bamboo_sprout.png"},
	inventory_image = "atl_server_reworked_biomes_bamboo_sprout.png",
	wield_image = "atl_server_reworked_biomes_bamboo_sprout.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_bamboo_tree,
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"atl_server_reworked_biomes:bamboo_sprout",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"atl_server_reworked_biomes:bamboo_sprout", grow_new_bamboo_tree, "soil"},
	})
end

	default.register_leafdecay({
		trunks = {"atl_server_reworked_biomes:bamboo"},
		leaves = {"atl_server_reworked_biomes:bamboo_leaves"},
		radius = 6,
	})
