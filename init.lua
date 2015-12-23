modname = "spell:"
characters = {
	_A = {name="A", letter=1 },
    _B = {name="B", letter=1 },
    _C = {name="C", letter=1 },
    _D = {name="D", letter=1 },
    _E = {name="E", letter=1 },
    _F = {name="F", letter=1 },
    _G = {name="G", letter=1 },
    _H = {name="H", letter=1 },
    _I = {name="I", letter=1 },
    _J = {name="J", letter=1 },
    _K = {name="K", letter=1 },
    _L = {name="L", letter=1 },
    _M = {name="M", letter=1 },
    _N = {name="N", letter=1 },
    _O = {name="O", letter=1 },
    _P = {name="P", letter=1 },
    _Q = {name="Q", letter=1 },
    _R = {name="R", letter=1 },
    _S = {name="S", letter=1 },
    _T = {name="T", letter=1 },
    _U = {name="U", letter=1 },
    _V = {name="V", letter=1 },
    _W = {name="W", letter=1 },
    _X = {name="X", letter=1 },
    _Y = {name="Y", letter=1 },
    _Z = {name="Z", letter=1 },
    _0 = {name="0" },
    _1 = {name="1" },
    _2 = {name="2" },
    _3 = {name="3" },
    _4 = {name="4" },
    _5 = {name="5" },
    _6 = {name="6" },
    _7 = {name="7" },
    _8 = {name="8" },
    _9 = {name="9" }
}

for key,value in pairs(characters) do
    if value.letter then
        my_desc = "Letter"..key
        minetest.register_node(modname.."Sign"..key, {
            description="Sign "..my_desc,
            drawtype = "nodebox",
            node_box = {
                type = "wallmounted",
                wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
                wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
                wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
            },
            paramtype = "light",
            paramtype2 = "wallmounted",
            sunlight_propagates = true,
            light_source = 14,
            inventory_image = "sign"..key..".png",
            wield_image = "sign"..key..".png",
            tiles = { "sign"..key..".png" },
            groups = {cracky=1, choppy=1},
            sounds = default.node_sound_wood_defaults(),
        })
    else
        my_desc = "Number"..key
    end
	minetest.register_node(modname.."Letter"..key, {
        description="Block"..my_desc,
		tiles = { "spell"..key..".png" },
		light_source = 14,
        inventory_image = "spell"..key..".png",
		groups = {cracky=3, choppy=3},
		sounds = default.node_sound_stone_defaults(),
	})
end

	minetest.register_node(modname.."px_logo", {
        description="planet express logo",
		tiles = { "PX.png" },
		light_source = 14,
        inventory_image = "PX.png",
		groups = {cracky=3, choppy=3},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(modname.."nigel", {
        description="Nigel",
        drawtype = "nodebox",
        node_box = {
            type = "wallmounted",
            wall_top    = {-0.4875, 0.4875, -0.4875, 0.4875, 0.5, 0.4875},
            wall_bottom = {-0.4875, -0.5, -0.4875, 0.4875, -0.4875, 0.4875},
            wall_side   = {-0.5, -0.4875, -0.4875, -0.4875, 0.4875, 0.4875},
        },

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
