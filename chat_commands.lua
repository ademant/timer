
minetest.register_chatcommand("cd", {
	params = "<name>",
	description = "Start a countdown",
	func = function(name, param)
--		print(name,param)
		local countdown=timer.countdown_default
		local xp= string.split(param, " ")
		if #xp == 1 then
			countdown=tonumber(xp[1])
			print(countdown,xp[1])
			if countdown == nil then
				if (xp[1] == "rest") or (xp[1] == "r") then
					minetest.chat_send_player(name,"countdown remaining: "..math.floor(100*xpfw.player_get_attribute(minetest.get_player_by_name(name),timer.prefix))/100)
				end
			end
		elseif #xp >1 then
			countdown=tonumber(xp[2])			
		end
		if countdown ~=nil then
			xpfw.player_set_attribute(minetest.get_player_by_name(name),timer.prefix,countdown)
			timer.player[name]=countdown
		end
	end
})
