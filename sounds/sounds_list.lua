-- This file auto-generated by https://github.com/ZwerOxotnik/factorio-multi-template-mod
-- Please, do not change this file if you're not sure, except sounds_list.name and path!
-- You need require this file to your control.lua and add https://mods.factorio.com/mod/zk-lib in your dependencies

local sounds_list = {
	name = "test", --change me, if you want to add these sounds to programmable speakers
	path = "__multi-template-mod__/sounds/", -- path to this folder
	sounds = {
		{
			name = "woosh",
		},
	}
}

if puan2_api then
	puan2_api.add_sounds(sounds_list)
elseif puan_api then
	puan_api.add_sounds(sounds_list)
end

return sounds_list