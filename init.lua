
--= Ambience lite by TenPlus1 (4th Feb 2015)

local max_frequency_all = 1000 -- larger number means more frequent sounds (100-2000)
local SOUNDVOLUME = 1
local volume = 0.3
local ambiences
local played_on_start = false
local tempy = 0

-- sound sets
local night = {
	handler = {},		frequency = 20,
	{name="hornedowl",	length=2},
	{name="wolves",		length=4},
	{name="cricket",	length=6},
	{name="deer",		length=7},
	{name="frog",		length=1},
	{name="raccoon",	length=1}
}

local day = {
	handler = {},			frequency = 80,
	{name="cardinal",		length=3},
	{name="craw",			length=3},
	{name="bluejay",		length=6},
	{name="canadianloon1",	length=10},
	{name="canadianloon2",	length=14},
	{name="robin",			length=4},
	{name="bird1",			length=11},
	{name="bird2",			length=6},
	{name="crestedlark",	length=6},
	{name="peacock",		length=2}
}

local cave = {
	handler = {},			frequency = 80,
	{name="drippingwater1",	length=1.5},
	{name="drippingwater2",	length=1.5}
}

local beach = {
	handler = {},			frequency = 20,
	{name="seagull",		length=4.5},
	{name="beach",			length=13},
	{name="gull",			length=1}
}

local desert = {
	handler = {},			frequency = 20,
	{name="coyote",			length=2.5},
	{name="desertwind",		length=8}
}

local flowing_water = {
	handler = {},			frequency = 1000,
	{name="waterfall",		length=6}
}

local underwater = {
	handler = {},			frequency = 1000,
	{name="scuba",			length=8}
}

local splash = {
	handler = {},			frequency = 1000,
	{name="swim_splashing",	length=3},
}

local lava = {
	handler = {},			frequency = 1000,
	{name="lava",			length=7}
}

local smallfire = {
	handler = {},			frequency = 1000,
	{name="fire_small",		length=6}
}

local largefire = {
	handler = {},			frequency = 1000,
	{name="fire_large",		length=8}
}

-- find how many nodes in range
local nodes_in_range = function(pos, search_distance, node_name)
	local nodes = minetest.env:find_nodes_in_area({x=pos.x-search_distance,y=pos.y-search_distance, z=pos.z-search_distance},
		{x=pos.x+search_distance,y=pos.y+search_distance, z=pos.z+search_distance}, node_name)
	return #nodes
end

-- check where player is and which sounds are played
local get_ambience = function(player)

	-- where am I?
	local pos = player:getpos()

	-- what is around me?
	pos.y = pos.y - 0.1 -- standing on
	local nod_stand = minetest.get_node(pos).name

	pos.y = pos.y + 1.5 -- head level
	local nod_head = minetest.get_node(pos).name
	
	pos.y = pos.y - 1.2 -- feet level
	local nod_feet = minetest.get_node(pos).name
	
	pos.y = pos.y - 0.2 -- reset pos

	--= START Ambiance

	if nod_head == "default:water_source"
	or nod_head == "default:water_flowing" then
		return {underwater=underwater}
	end

	if nod_feet == "default:water_source"
	or nod_feet == "default:water_flowing" then
		return {splash=splash}
	end

	if minetest.get_modpath("fire") then
	if fire.mod == "redo" then

		tempy = nodes_in_range(pos, 6, {"fire:basic_flame", "bakedclay:safe_fire"})
		if tempy > 8 then
			return {largefire=largefire}
		elseif tempy > 0 then
			return {smallfire=smallfire}
		end

	end
	end

	if nodes_in_range(pos, 5, {"default:lava_flowing", "default:lava_source"}) > 5 then
		return {lava=lava}		
	end
	
	if nodes_in_range(pos, 5, "default:water_flowing") > 45 then
		return {flowing_water=flowing_water}
	end
	
	if pos.y < 7 and pos.y > 0 and nodes_in_range(pos, 20, {"default:water_source"}) > 100 then
		return {beach=beach}
	end
	
	if nodes_in_range(pos, 5, {"default:desert_sand", "default:desert_stone", "default:sandstone"}) > 250 then
		return {desert=desert}
	end
	
	if player:getpos().y < -10 then
		return {cave=cave}
	end
	
	if minetest.env:get_timeofday() > 0.2 and minetest.env:get_timeofday() < 0.8 then
		return {day=day}
	else
		return {night=night}
	end

	-- END Ambiance
end

-- play sound, set handler then delete handler when sound finished
local play_sound = function(player, list, number)

	local player_name = player:get_player_name()

	if list.handler[player_name] == nil then

		local gain = volume * SOUNDVOLUME
		local handler = minetest.sound_play(list[number].name, {to_player=player_name, gain=gain})

		if handler then
			list.handler[player_name] = handler

			minetest.after(list[number].length, function(args)
				local list = args[1]
				local player_name = args[2]

				if list.handler[player_name] then
					minetest.sound_stop(list.handler[player_name])
					list.handler[player_name] = nil
				end
			end, {list, player_name})
		end

	end
end

-- stop all sounds that are not in still_playing
local stop_sound = function(still_playing, player)

	local player_name = player:get_player_name()

	if not still_playing.cave then
		local list = cave
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end

	if not still_playing.beach then
		local list = beach
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end

	if not still_playing.desert then
		local list = desert
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end

	if not still_playing.night then
		local list = night
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end

	if not still_playing.day then
		local list = day
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end

	if not still_playing.flowing_water then
		local list = flowing_water
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end
	
	if not still_playing.splash then
		local list = splash
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end

	if not still_playing.underwater then
		local list = underwater
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end

	if not still_playing.lava then
		local list = lava
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end	
	
	if not still_playing.smallfire then
		local list = smallfire
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end	
	
	if not still_playing.largefire then
		local list = largefire
		if list.handler[player_name] then
			if list.on_stop then
				minetest.sound_play(list.on_stop, {to_player=player:get_player_name(),gain=SOUNDVOLUME})
			end
			minetest.sound_stop(list.handler[player_name])
			list.handler[player_name] = nil
		end
	end	


end

-- player routine
local timer = 0
minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	
	-- every 1 second
	if timer < 1 then return end
	timer = 0
	
	for _,player in ipairs(minetest.get_connected_players()) do

		ambiences = get_ambience(player)
		stop_sound(ambiences, player)

		for _,ambience in pairs(ambiences) do

			if math.random(1, 1000) <= ambience.frequency then			
				if ambience.on_start and played_on_start == false then
					played_on_start = true
					minetest.sound_play(ambience.on_start,
					{to_player=player:get_player_name(),gain=SOUNDVOLUME})					
				end
				play_sound(player, ambience, math.random(1, #ambience))
			end
		end
		
	end
end)

-- set volume command
minetest.register_chatcommand("svol", {
	params = "<svol>",
	description = "set sound volume (0.1 to 1.0)",
	privs = {server=true},
	func = function(name, param)
		SOUNDVOLUME = param
		minetest.chat_send_player(name, "Sound volume set.")
	end,
})
