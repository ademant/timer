
timer = {}
timer.path = minetest.get_modpath("timer")
timer.modname=minetest.get_current_modname()
timer.mod_storage=minetest.get_mod_storage()

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- start loading from "..minetest.get_modpath(minetest.get_current_modname()))
-- Load files

-- import settingtypes.txt
basic_functions.import_settingtype(timer.path .. "/settingtypes.txt")

dofile(timer.path .. "/config.lua") -- API
dofile(timer.path .. "/chat_commands.lua")

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded ")
