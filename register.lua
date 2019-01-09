local M=timer

minetest.register_on_joinplayer(function(player)
--	xpfw.player_set_attribute(player,timer.prefix,0)
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
		local ttime=timer.dtime
		timer.dtime=0
		local players = minetest.get_connected_players()
		if #players ~= nil then
			if #players > 0 then
				for i=1, #players do
					local player=players[i]
					local name = player:get_player_name()
					if xpfw.player_get_attribute(player,timer.prefix)>0 then
						xpfw.player_sub_attribute(player,timer.prefix,ttime)
						if xpfw.player_get_attribute(player,timer.prefix)<=0 then
							minetest.chat_send_player(name,"Countdown finished")
							timer.player[name]=nil
						end
					end
				end
			end
		end
		
	end
end)
