
minetest.register_chatcommand("cd", {
	params = "<name>",
	description = "Start a countdown",
	func = function(name, param)
--		print(name,param)
		local countdown=timer.countdown_default
		local xp= string.split(param, " ")
		if #xp == 1 then
			countdown=tonumber(xp[1])
		elseif #xp >1 then
			countdown=tonumber(xp[2])			
		end
		timer.player[name]=countdown
	end
})
