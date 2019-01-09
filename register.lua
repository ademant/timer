local M=timer

minetest.register_on_joinplayer(function(player)
	xpfw.player_set_attribute(player,timer.prefix,0)
end
)

minetest.register_on_leaveplayer(function(player)
	if player ~= nil then
--		xpfw.player_set_attribute(player,timer.prefix,0)
	end
end)


minetest.register_globalstep(function(dtime)
	timer.dtime=timer.dtime+dtime
	if timer.dtime>timer.precision then
		timer.dtime=0
		
	end
--	print("xpfw_abm: "..1000*(os.clock()-starttime))
end)
