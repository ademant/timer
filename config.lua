
timer.precision=tonumber(minetest.settings:get("timer.precision")) or 1
timer.countdown_default=tonumber(minetest.settings:get("timer.countdown_default")) or 120
timer.prefix="timer:countdown"
timer.player={}
timer.dtime=0

--xpfw.register_attribute(timer.prefix,{min=0,max=math.huge,default=timer.countdown_default,hud=1})
