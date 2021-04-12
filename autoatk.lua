local autoatk = TalkAction("!autoatk")

local radiusX1 = 20
local radiusY1 = 20
local areapos = getCreaturePosition(cid)
local spectator = Game.getSpectators(radiusX, radiusY, false, false, areapos)

local monster = THING_TYPE_MONSTER
--[[
function onTargetCreature(creature, target)
return doChallengeCreature(creature, target)
end
]]
function autoatk.onSay(player, words, param)
local split = param:split(",")
	
	local action = split[1]
    if action == "face2face" then
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Auto attack is activated on mode FACE2FACE!")
		
		if monster ~= nil
		else if spectator => 1
		then
			local targets = monster:getTargetList()
			local currentTarget = monster:getTarget()
			if not currentTarget then
				return monster:searchTarget()
			end
			if currentTarget ~= nil then
				for i = 1, #targets do
						local target = targets[i]
				end
				local newTarget = monster:getTargetList()[1]
				monster:setTarget(newTarget)
				monster:setFollowCreature(newTarget)
			end
		end
		
	-- MANTER DISTANCIA
		
	else if action == "distance3" then
    doPlayerSendCancel(cid, "Auto attack is activated on mode DISTANCE Range: 3!")
	
	-- DESATIVAR
	
	else if action == "off" then
    doPlayerSendCancel(cid, "Auto attack is OFF!")
	
    return true
end

autoatk:register() 
