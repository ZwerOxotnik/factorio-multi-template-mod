local techs = {
	"military",
	"logistics",
	"stone-wall",
	"gate",
}

if script.active_mods.IndustrialRevolution3 then
	techs[#techs+1] = "ir-charcoal"
	techs[#techs+1] = "ir-grinding"
end


return techs
