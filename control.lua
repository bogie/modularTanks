require "defines"

-- Init
function onload()

end

game.oninit(onload)
game.onload(onload)

-- Ticking
game.onevent(defines.events.ontick, function(event)
	updateGuiDisplay(event)
end)

-- Gui

game.onevent(defines.events.onguiclick, function(event)
	local player = game.players[event.element.playerindex]
	player.print(event.element.name)
-- todo fix this
	if event.element.name == "tankButton" then
		showTankConfig(event)
	end
	if event.element.name == "tankConfigApply" then
		applyTankConfig(event)
	end
end)

function updateGuiDisplay(event)
	for _,player in pairs(game.players) do
		if player.vehicle ~= nil and player.vehicle.name == "modularTank" then
			if player.gui.top.tankButton == nil then
				player.gui.top.add{type="button", name="tankButton", caption="Open Tank menu"}
			end
		else
			if player.gui.top.tankButton ~= nil then
				player.gui.top.tankButton.destroy()
			end
		end
	end
end

function showTankConfig(event)
	local player = game.players[event.element.playerindex]
	local frame = player.gui.center.tankConfig
	
	player.print("showTankConfig")

	if frame ~= nil then
	else
		player.gui.center.add{type="frame", name="tankConfig", caption="Modular Tank Config", direction="vertical"}
		frame = player.gui.center.tankConfig
		
		
		frame.add{type="button", name="tankConfigApply", caption="Apply"}
	end

end

function applyTankConfig(event)
	local player = game.players[event.element.playerindex]
	if player.gui.center.tankConfig then
		player.gui.center.tankConfig.destroy()
	end
end

