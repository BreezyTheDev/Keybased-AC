# Keybased-AC

## What is it?

This resource was created so server developers, owners or leadership can detect modders easier. I do not recommend kicking or banning the user based off the information provided by this system. I only recommend keeping an eye out of users who are detected by this system when a modder is present.

## Configuration

The following can be found in the ``config.lua`` file.
```
    Config = {
    -- Set the keys you wish to be logged here. Find more keybinds here: (https://docs.fivem.net/docs/game-references/controls/)
    -- Format: {{Index}, "Default QWERTY", "Xbox Controller"},
    Keys = {
        {{121}, "INSERT", "R3"}, -- INSERT OR R3
        {{178}, "DELETE", "Y"}, -- DELETE OR Y
        {{212}, "HOME", "RB"}, -- HOME OR RB

    },
    DiscordLogs = {
        Webhook = '' -- Do not forget to add a webhook.
    },
    Debug = {
        Enable = false -- Defaults to false, set to true if you wish to enable.
    }
}
```
In the ``config.lua`` file you can add more keybinds to be logged & add the discord webhook.

## Download
https://github.com/BreezyTheDev/Keybased-AC

## Reference
https://docs.fivem.net/docs/game-references/controls/

## Errors or Suggestions?
Please message me on discord if you come across any errors when using this resource or if you would like to make a suggestion.
Discord: `Breezy#0001`


