-- See https://wiki.factorio.com/Tutorial:Mod_settings#Reading_settings

require("scenarios.template.defines")


--- Adds settings for commands
if mods["BetterCommands"] then
	local is_ok, better_commands = pcall(require, "__BetterCommands__/BetterCommands/control")
	if is_ok then
		better_commands.COMMAND_PREFIX = MOD_SHORT_NAME
		better_commands.create_settings(MOD_PATH, MOD_SHORT_NAME) -- Adds switchable commands
	end
end
