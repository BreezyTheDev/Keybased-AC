--================================--
--      Keybased-AC 1.0           --
--      by BreezyTheDev           --
--		GNU License v3.0		  --
--================================--

-- Threads
Counter = 0;
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local suspiciouskeys = Config.Keys
        for i = 1, #suspiciouskeys do 
            local Keybind = suspiciouskeys[i][1];
            local keyMsg = suspiciouskeys[i][2];
            local keyMsg2 = suspiciouskeys[i][3];
            local keybind1 = Keybind[1];
            if IsControlJustReleased(0, keybind1) then
                Counter = Counter + 1;
                if Counter == Config.DiscordLogs.Counter then
                    TriggerServerEvent("KeybasedAC:Pressed", keyMsg, keyMsg2)
                    Counter = 0
                end
            end
        end
    end
end)



