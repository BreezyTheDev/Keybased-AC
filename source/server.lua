--================================--
--      Keybased-AC 1.1           --
--      by BreezyTheDev           --
--		GNU License v3.0		  --
--================================--

RegisterNetEvent("KeybasedAC:Pressed")
AddEventHandler("KeybasedAC:Pressed", function(keyMsg, keyMsg2)
    local src = source
    local author = GetPlayerName(src)
    if Config.Screenshot then
        exports["discord-screenshot"]:requestCustomClientScreenshotUploadToDiscord(
        GetPlayers()[1],
        Config.DiscordWebhook,
        {
            encoding = "png",
            quality = 1
        },
        {
            embeds = {
                {
                    ["color"] = 13055799,
                    ["title"] = "Suspicious Activity by: [" .. author.."] (ID: " .. src .. ")",
                    ["description"] = "**Notice:** User is pressing keys commonly used by third-party menus.\n**Key Pressed:** ``"..keyMsg.."`` or ``"..keyMsg2.."``",
                    ["footer"] = {
                        ["text"] = "Keybased-AC 1.3 by Breezy#0001",
                    },
                }
            }
        },
        30000,
        )
    else
        sendToDisc("Suspicious Activity by: ["..author.."] (ID: "..src..")", 
            "**Notice:** User is pressing keys commonly used by third-party menus.\n**Key Pressed:** ``".. keyMsg.."`` or ``"..keyMsg2.."``")
    end
end)

-- If Config.Screenshot was set to false then
function sendToDisc(title, msg)
    local embed = {
        {
            ["color"] = 13055799,
            ["title"] = "**".. title .."**",
            ["description"] = msg,
            ["footer"] = {
                ["text"] = "Keybased-AC 1.3 by Breezy#0001",
            },
        }
    }
    PerformHttpRequest(Config.DiscordWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  -- END
end

print("^0This resource was created by ^5Breezy#0001 ^0for support you can join his ^5discord: ^0https://discord.gg/zzUfkfRHzP")
