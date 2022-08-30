--================================--
--      Keybased-AC 1.0           --
--      by BreezyTheDev           --
--		GNU License v3.0		  --
--================================--

Config = {
    -- Set the keys you wish to be logged here. Find more keybinds here: (https://docs.fivem.net/docs/game-references/controls/)
    -- Format: {{Index}, "Default QWERTY", "Xbox Controller"},
    Keys = {
        {{121}, "INSERT", "R3"}, -- INSERT OR R3
        {{178}, "DELETE", "Y"}, -- DELETE OR Y
        {{212}, "HOME", "RB"}, -- HOME OR RB

    },
    DiscordLogs = {
        -- In order to prevent rate limitation by Discord, I had to implement this counter,
        -- If the set keybinds are pressed for ex. 5x then it will proceed to send a webhook.
        Counter = 5,
        Webhook = '' -- Do not forget to add a webhook.
    },
    Debug = {
        Enable = false -- Defaults to false, set to true if you wish to enable.
    }
}
