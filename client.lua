local PauseMenu = false 

Citizen.CreateThread(function()
    while true do
    if IsPauseMenuActive() then
		SendNUIMessage({action = "ausmachen"})
        PauseMenu = true
    elseif not MumbleIsConnected() and not IsPauseMenuActive() then 
        PauseMenu = false 
    elseif MumbleIsConnected() then 
        SendNUIMessage({action = "ausmachen"})
	end
    if not MumbleIsConnected() then 
        if MumbleIsConnected() then 
            SendNUIMessage({action = "ausmachen"})
        elseif not MumbleIsConnected() and not PauseMenu then
            SendNUIMessage({action = "anmachen"})
        end
    end
        Wait(500)
    end 
end)