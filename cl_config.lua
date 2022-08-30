--================================--
--      Keybased-AC 1.3           --
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
    Options = {
        -- In order to prevent rate limitation by Discord, I had to implement this counter,
        -- If the set keybinds are pressed for ex. 5x then it will proceed to send a webhook.
        Counter = 5, -- Lowering this value increases your chances of being rate limited. Edit at your own risk.
    },
    Debug = {
        Enable = false -- Defaults to false, set to true if you wish to enable.
    }
}