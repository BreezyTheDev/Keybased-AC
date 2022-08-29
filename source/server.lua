--================================--
--      Keybased-AC 1.0           --
--      by BreezyTheDev           --
--		GNU License v3.0		  --
--================================--

RegisterNetEvent("KeybasedAC:Pressed")
AddEventHandler("KeybasedAC:Pressed", function(keyMsg, keyMsg2)
    local src = source
    local author = GetPlayerName(src)
    sendToDisc("Suspicious Activity by: ["..author.."] (ID: "..src..")", "**Notice:** User is pressing keys commonly used by third-party menus.\n **Key Pressed:** ``".. keyMsg.."`` or ``"..keyMsg2.."``")
end)

function sendToDisc(title, msg)
    local embed = {}
    embed = {
        {
            ["color"] = 13055799,
            ["title"] = "**".. title .."**",
            ["description"] = msg,
            ["footer"] = {
                ["text"] = "Keybased AC 1.0 by Breezy#0001",
            },
        }
    }
    PerformHttpRequest(Config.DiscordLogs.Webhook,
    function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  -- END
end

print("^0This resource was created by ^5Breezy#0001 ^0for support you can join his ^5discord: ^0https://discord.gg/zzUfkfRHzP")

if Settings.Debug.Enable then
    if Settings.DiscordLogs.Webhook == '' then
        print("^1[Keybased-AC Debug] ^3In order for discord logs to work properly a webhook needs to be added in the config. ^7")
    end
end