local M = {}


local force_util = require("zk-s-lib/lualibs/control_stage/force-util")


M.START_PLAYER_ITEMS = require("start_player_items")
M.START_TECHS = require("start_techs")


---@type cmd CustomData
function M.test_command(cmd)
	local player = game.get_player(cmd.player_index)
	player.print("test")
end


---@type event on_game_created_from_scenario
function M.on_game_created_from_scenario(event)
	force_util.research_techs_safely(game.forces.player, M.START_TECHS)
end


---@type event on_player_created
function M.on_player_created(event)
	local player_index = event.player_index
	local player = game.get_player(player_index)
	if not (player and player.valid) then return end

	local item_prototypes = game.item_prototypes
	for _, item_data in ipairs(M.START_PLAYER_ITEMS) do
		if item_prototypes[item_data.name] then
			player.insert(item_data)
		else
			log(item_data.name .. " is invalid")
		end
	end
end


M.events = {
	[defines.events.on_game_created_from_scenario] = M.on_game_created_from_scenario,
	[defines.events.on_player_created] = M.on_player_created,
}


M.commands = {
	test = M.test_command,
}


return M
