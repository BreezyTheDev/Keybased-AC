![image](https://user-images.githubusercontent.com/63890993/187862355-d3daef2d-ab24-47da-9198-24b00a90d58f.png)

## What is it?

This resource was created so server developers, owners or leadership can detect modders easier. I do not recommend kicking or banning the user based off the information provided by this system. I only recommend keeping an eye out for users who are detected by this system when a modder is present.

## Configuration

The following can be found in the ``cl_config.lua`` file.
```
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
```

The following can be found in the ``sv_config.lua`` file.
```
    Config = {
    -- Requires [screenshot-basic] - Defaults to false, set to true if you wish to enable.
    Screenshot = true,
    -- To prevent exploitation I made the webhook server-sided.
    DiscordWebhook = '', -- Do not forget to add a webhook.
    }
```

## :white_check_mark: **Changelog**
> **v1.1**
> - Added a counter to help prevent discord rate limitation.

> **v1.2**
> - Added [screenshot-basic](https://github.com/jaimeadf/discord-screenshot/releases/tag/1.3.7) export.

> **v1.3**
> - Resolved webhook exploitation.


## Download
https://github.com/BreezyTheDev/Keybased-AC

## Reference
https://docs.fivem.net/docs/game-references/controls/

## screenshot-basic & discord-screenshot
https://github.com/jaimeadf/discord-screenshot/releases/tag/1.3.7

## Errors or Suggestions?
Please message me on discord if you come across any errors when using this resource or if you would like to make a suggestion.
Discord: `Breezy#0001`



