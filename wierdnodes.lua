-- WierdNodes. part of
-- spell  server management & toys
-- Created for Elektra's Creative Server
-- Contains code derived from "Jail Mod" By kaeza and RAPHAEL (mostly kaeza)
-- Extended by Nigel Garnett starting 2015-08-21
-- license: see license.txt
local modname = "spell:"

minetest.register_node(modname.."nigel", {
    description="Nigel",
    drawtype = "nodebox",
    node_box = {
        type = "wallmounted",
        wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
        wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
        wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
    },-- spell  server management & toys
-- Created for Elektra's Creative Server
-- Contains code derived from "Jail Mod" By kaeza and RAPHAEL (mostly kaeza)
-- Extended by Nigel Garnett starting 2015-08-21
-- license: see license.txt

	paramtype = "light",
	paramtype2 = "wallmounted",
    wield_image = "nyje_nyje.png",
    sunlight_propagates = true,
    tiles = { "nyje_nyje.png" },
	light_source = 14,
    inventory_image = "nyje_nyje.png",
	groups = {cracky=3, choppy=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(modname.."yinyangsign", {
    description="Yin Yang",
    drawtype = "nodebox",
    node_box = {
        type = "wallmounted",
        wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
        wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
        wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
    },-- spell  server management & toys
	paramtype = "light",
	paramtype2 = "wallmounted",
    wield_image = "yinyang.png",
    sunlight_propagates = true,
    tiles = { "yinyang.png" },
	light_source = 14,
        inventory_image = "yinyang.png",
	groups = {cracky=3, choppy=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(modname.."kityangsign", {
    description="kittinYang",
    drawtype = "nodebox",
    node_box = {
        type = "wallmounted",
        wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
        wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
        wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
    },-- spell  server management & toys
	paramtype = "light",
	paramtype2 = "wallmounted",
    wield_image = "kityang.png",
    sunlight_propagates = true,
    tiles = { "kityang.png" },
	light_source = 14,
        inventory_image = "kityang.png",
	groups = {cracky=3, choppy=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node(modname.."elektra", {
    description="Elektra",
    drawtype = "nodebox",
    node_box = {
        type = "wallmounted",
        wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
        wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
        wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
    },
	paramtype = "light",
	paramtype2 = "wallmounted",
    wield_image = "nyje_elektra.png",
    sunlight_propagates = true,
    tiles = { "nyje_elektra.png" },
	light_source = 14,
    inventory_image = "nyje_elektra.png",
	groups = {cracky=3, choppy=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(modname.."dangersign", {
    description="Danger Of Death Sign",
    drawtype = "nodebox",
    node_box = {
        type = "wallmounted",
        wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
        wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
        wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
    },
	paramtype = "light",
	paramtype2 = "wallmounted",
    wield_image = "dds.png",
    sunlight_propagates = true,
    tiles = { "dds.png" },
	light_source = 14,
    inventory_image = "dds.png",
	groups = {cracky=3, choppy=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("spell:glaz", {
	description = "Invisible Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"glaz.png"},
	inventory_image = minetest.inventorycube("glaz.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("spell:yinyangblock", {
	description = "Yin Yang Block",
	drawtype = "nodebox",
	tiles = {"yinyang.png"},
	inventory_image = minetest.inventorycube("yinyang.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})


minetest.register_node("spell:kityangblock", {
	description = "Kittin Yang Block",
	drawtype = "nodebox",
	tiles = {"kityang.png"},
	inventory_image = minetest.inventorycube("kityang.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})



-- 	minetest.register_node(modname.."px_logo", {
--         description="planet express logo",
-- 		tiles = { "PX.png" },
-- 		light_source = 14,
--         inventory_image = "PX.png",
-- 		groups = {cracky=3, choppy=3},
-- 		sounds = default.node_sound_stone_defaults(),
-- 	})

-- 	minetest.register_node(modname.."lebes", {
--         description="Lojas Lebes",
--         drawtype = "nodebox",
--         node_box = {
--             type = "wallmounted",
--             wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
--             wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
--             wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
--         },
--     	paramtype = "light",
--     	paramtype2 = "wallmounted",
--         wield_image = "lebes.png",
--         sunlight_propagates = true,
--         tiles = { "lebes.png" },
-- 		light_source = 14,
--         inventory_image = "lebes.png",
-- 		groups = {cracky=3, choppy=3},
-- 		sounds = default.node_sound_stone_defaults(),
-- 	})
--
--
-- 	minetest.register_node(modname.."PhilosoPhia_Agatha", {
--         description="PhilosoPhia_Agatha",
--         drawtype = "nodebox",
--         node_box = {
--             type = "wallmounted",
--             wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
--             wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
--             wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
--         },
--     	paramtype = "light",
--     	paramtype2 = "wallmounted",
--         wield_image = "will.png",
--         sunlight_propagates = true,
--         tiles = { "will.png" },
-- 		light_source = 14,
--         inventory_image = "will.png",
-- 		groups = {cracky=3, choppy=3},
-- 		sounds = default.node_sound_stone_defaults(),
-- 	})
