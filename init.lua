-- spell  server management & toys
-- Created for Elektra's Creative Server
-- Contains code derived from "Jail Mod" By kaeza and RAPHAEL (mostly kaeza)
-- Extended by Nigel Garnett starting 2015-08-21
-- license: see license.txt



--------------------------------------------------------
--    local variables

local modname = "spell:"
local spawn = {x = -3, y =11, z = -3}
local path = minetest.get_modpath("spell")

--------------------------------------------------------
--    call the rest...

dofile(path .. "/sitlay.lua")
dofile(path .. "/wierdnodes.lua")
dofile(path .. "/jail.lua")
dofile(path .. "/letters.lua")

------------------------------------------------------
-- Register stuff with the game engine

--minetest.register_privilege("setspawn", { description = "Allows one to set the spawn position." })


-- Set a nice hud size
minetest.register_on_joinplayer(function(player)
    minetest.after(0, player.hud_set_hotbar_itemcount, player, 16)
end)


minetest.register_chatcommand("spawn", {
    description = "Teleport player to spawn point.",
	privs = {interact=true},
    func = function ( name, param )
        local player = minetest.get_player_by_name(name)
        minetest.chat_send_player(player:get_player_name(), "Teleporting to spawn...")
        player:setpos(spawn)
        return true
    end,
})

minetest.register_chatcommand("afk", {
    description = "Tell everyone you are afk.",
    func = function ( name, param )
        local player = minetest.get_player_by_name(name)
        minetest.chat_send_all(name.." is AFK! ")
        return true
    end,
})


-------------------------------------------------------------------
-- alias away old mod stuff to keep the map tidy

minetest.register_alias("stargate:gatenode1", "air")
minetest.register_alias("stargate:gatenode2", "air")
minetest.register_alias("stargate:gatenode3", "air")
minetest.register_alias("stargate:gatenode4", "air")
minetest.register_alias("stargate:gatenode5", "air")
minetest.register_alias("stargate:gatenode6", "air")
minetest.register_alias("stargate:gatenode7", "air")
minetest.register_alias("stargate:gatenode8", "air")
minetest.register_alias("stargate:gatenode9", "air")
minetest.register_alias("stargate:gatenode1_off", "air")
minetest.register_alias("stargate:gatenode2_off", "air")
minetest.register_alias("stargate:gatenode3_off", "air")
minetest.register_alias("stargate:gatenode4_off", "air")
minetest.register_alias("stargate:gatenode5_off", "air")
minetest.register_alias("stargate:gatenode6_off", "air")
minetest.register_alias("stargate:gatenode7_off", "air")
minetest.register_alias("stargate:gatenode8_off", "air")
minetest.register_alias("stargate:gatenode9_off", "air")
--minetest.register_alias("mobs:egg", "air")
minetest.register_alias("wardrobe:wardrobe", "air")
--minetest.register_alias("candycane:candy_block", "stone")
--for i = 1, 15 do
--	minetest.register_alias("xpanes:pane_"..i, "air")
--end



-------------------------------------------------------------------
-- END OF LIVE CODE SECTION
-------------------------------------------------------------------


-------------------------------------------------------------------
-- Disabled & held code only after this

-- minetest.register_alias("wardenpick", "jail:pick_warden")
--
-- minetest.register_node("jail:jailwall", {
-- 	description = "Unbreakable Jail Wall",
-- 	tiles = {"jail_wall.png"},
-- 	is_ground_content = true,
-- 	groups = {unbreakable=1},
-- --	sounds = default.node_sound_stone_defaults(),
-- })
--
-- minetest.register_node("jail:glass", {
-- 	description = "Unbreakable Jail Glass",
-- 	drawtype = "glasslike",
-- 	tiles = {"jail_glass.png"},
-- 	paramtype = "light",
-- 	sunlight_propagates = true,
-- 	is_ground_content = true,
-- 	groups = {unbreakable=1},
-- --	sounds = default.node_sound_glass_defaults(),
-- })
--
-- minetest.register_node("jail:ironbars", {
-- 	drawtype = "fencelike",
-- 	tiles = {"jail_ironbars.png"},
-- 	inventory_image = "jail_ironbars.png",
-- 	light_propagates = true,
-- 	paramtype = "light",
-- 	is_ground_content = true,
-- 	selection_box = {
-- 		type = "fixed",
-- 		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
-- 	},
-- 	groups = {unbreakable=1},
-- --	sounds = default.node_sound_stone_defaults(),
-- })
--
-- minetest.register_tool("jail:pick_warden", {
-- 	description = "Warden Pickaxe",
-- 	inventory_image = "jail_wardenpick.png",
-- 	tool_capabilities = {
-- 		full_punch_interval = 0,
-- 		max_drop_level=3,
-- 		groupcaps={
-- 			unbreakable={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
-- 			fleshy = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
-- 			choppy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
-- 			bendy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
-- 			cracky={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
-- 			crumbly={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
-- 			snappy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
-- 		}
-- 	},
-- })


