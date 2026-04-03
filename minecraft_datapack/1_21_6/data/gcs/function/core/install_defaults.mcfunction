# Install default handlers (13 tane - minimum)

# Handler 1: Help
data modify storage gcs:db handlers append value {hid:1,name:"help",label:"Help Menu",description:"Lists all commands",auth_level:1,enabled:1b,category:"utility",command:"function gcs:handlers/builtin/help"}

# Handler 2: Ev TP
data modify storage gcs:db handlers append value {hid:2,name:"home",label:"Teleport Home",description:"Teleport to spawn",auth_level:1,enabled:1b,category:"teleport",command:"function gcs:handlers/builtin/teleport_home"}

# Handler 3: Heal
data modify storage gcs:db handlers append value {hid:3,name:"heal",label:"Heal",description:"Fully restores health and hunger",auth_level:1,enabled:1b,category:"utility",command:"function gcs:handlers/builtin/heal"}

# Handler 4: Feed
data modify storage gcs:db handlers append value {hid:4,name:"feed",label:"Feed",description:"Satisfies hunger",auth_level:1,enabled:1b,category:"utility",command:"effect give @s saturation 1 10"}

# Handler 5: Fly
data modify storage gcs:db handlers append value {hid:5,name:"fly",label:"Fly Mode",description:"Toggle fly mode",auth_level:2,enabled:1b,category:"ability",command:"execute if entity @s[nbt={abilities:{flying:0b}}] run ability @s mayfly true"}

# Handler 6: Day/Night Toggle
data modify storage gcs:db handlers append value {hid:6,name:"toggle_time",label:"Toggle Day/Night",description:"Toggles time between day and night",auth_level:2,enabled:1b,category:"world",command:"function gcs:handlers/builtin/toggle_time"}

# Handler 7: Hava Toggle
data modify storage gcs:db handlers append value {hid:7,name:"toggle_weather",label:"Toggle Weather",description:"Toggles weather between clear and rain",auth_level:2,enabled:1b,category:"world",command:"function gcs:handlers/builtin/toggle_weather"}

# Handler 8: Set Day
data modify storage gcs:db handlers append value {hid:8,name:"day",label:"Set Day",description:"Sets time to day",auth_level:2,enabled:1b,category:"world",command:"time set day"}

# Handler 9: Spawn TP
data modify storage gcs:db handlers append value {hid:9,name:"spawn",label:"Teleport to Spawn",description:"Teleport to world spawn",auth_level:1,enabled:1b,category:"teleport",command:"tp @s @e[type=marker,tag=spawn_point,limit=1]"}

# Handler 10: Clear Items
data modify storage gcs:db handlers append value {hid:10,name:"clear_items",label:"Clear Items",description:"Clears item entities on the ground",auth_level:3,enabled:1b,category:"admin",command:"kill @e[type=item,distance=..100]"}

# Handler 11: God Mode
data modify storage gcs:db handlers append value {hid:11,name:"god",label:"God Mode",description:"Immortality mode",auth_level:3,enabled:1b,category:"ability",command:"effect give @s resistance 999999 4 true"}

# Handler 12: Speed
data modify storage gcs:db handlers append value {hid:12,name:"speed",label:"Speed Boost",description:"Increases movement speed",auth_level:2,enabled:1b,category:"ability",command:"effect give @s speed 300 2"}

# Handler 13: Gamemode
data modify storage gcs:db handlers append value {hid:13,name:"gm",label:"Change Gamemode",description:"Changes game mode",auth_level:3,enabled:1b,category:"admin",command:"gamemode creative @s"}


# ── NEW HANDLERS (14–19) ─────────────────────────────────────────────────

# Handler 14: Super Heal (multi-command)
data modify storage gcs:db handlers append value {hid:14,name:"super_heal",label:"Super Heal",description:"Full heal + clear all debuffs + buff package",auth_level:1,enabled:1b,category:"utility",commands:["effect give @s minecraft:instant_health 1 10 true","effect give @s minecraft:regeneration 15 3 false","effect give @s minecraft:saturation 1 10 true","effect give @s minecraft:absorption 120 3 false","effect give @s minecraft:resistance 30 0 false","effect clear @s poison","effect clear @s wither","effect clear @s hunger","effect clear @s weakness","effect clear @s nausea","particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.8 0.3 0.2 50 force","playsound minecraft:item.totem.use master @s ~ ~ ~ 0.8 1.2"]}

# Handler 15: Back — return to previous location
data modify storage gcs:db handlers append value {hid:15,name:"back",label:"Go Back",description:"Return to pre-teleport location",auth_level:1,enabled:1b,category:"teleport",command:"function gcs:back/go"}

# Handler 16: Vanish
data modify storage gcs:db handlers append value {hid:16,name:"vanish",label:"Vanish",description:"Toggle invisibility",auth_level:3,enabled:1b,category:"ability",command:"function gcs:handlers/builtin_extra/vanish"}

# Handler 17: TP All
data modify storage gcs:db handlers append value {hid:17,name:"tpall",label:"TP All",description:"Teleports all players to you",auth_level:3,enabled:1b,category:"admin",command:"function gcs:handlers/builtin_extra/tpall"}

# Handler 18: Starter Kit (multi-command)
data modify storage gcs:db handlers append value {hid:18,name:"kit",label:"Starter Kit",description:"Give starter equipment",auth_level:2,enabled:1b,category:"utility",commands:["give @s minecraft:iron_sword 1","give @s minecraft:iron_pickaxe 1","give @s minecraft:iron_axe 1","give @s minecraft:iron_helmet 1","give @s minecraft:iron_chestplate 1","give @s minecraft:iron_leggings 1","give @s minecraft:iron_boots 1","give @s minecraft:cooked_beef 16","give @s minecraft:torch 32","give @s minecraft:golden_apple 2","playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0"]}

# Handler 19: Nether Warp (multi-command)
data modify storage gcs:db handlers append value {hid:19,name:"nether",label:"Go to Nether",description:"Save location and teleport to Nether",auth_level:2,enabled:1b,category:"teleport",commands:["function gcs:back/save","execute in minecraft:the_nether run tp @s 0 64 0","playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8"]}

# ── NEW HANDLERS (20–25) ─────────────────────────────────────────────────

# Handler 20: Freeze toggle
data modify storage gcs:db handlers append value {hid:20,name:"freeze",label:"Freeze Toggle",description:"Hareketi dondurur veya serbest birakir (kendi ustune)",auth_level:3,enabled:1b,category:"admin",command:"function gcs:handlers/builtin_extra/freeze_self"}

# Handler 21: Smite
data modify storage gcs:db handlers append value {hid:21,name:"smite",label:"Yildirim Cak",description:"Kendine yildirim dusuruir",auth_level:3,enabled:1b,category:"admin",command:"function gcs:handlers/builtin_extra/smite_self"}

# Handler 22: Give XP — 10 seviye ver
data modify storage gcs:db handlers append value {hid:22,name:"give_xp",label:"XP Ver (10 Seviye)",description:"Kendine 10 seviye XP addr",auth_level:2,enabled:1b,category:"utility",command:"function gcs:handlers/builtin_extra/give_xp {amount:10}"}

# Handler 23: Rastgele TP
data modify storage gcs:db handlers append value {hid:23,name:"random_tp",label:"Random Teleport",description:"Teleports to a random overworld location",auth_level:1,enabled:1b,category:"teleport",command:"function gcs:handlers/builtin_extra/random_tp"}

# Handler 24: Zaman Dondur
data modify storage gcs:db handlers append value {hid:24,name:"time_freeze",label:"Freeze Time",description:"Pauses or resumes the daylight cycle",auth_level:3,enabled:1b,category:"world",command:"function gcs:handlers/builtin_extra/time_freeze"}

# Handler 25: Madenci Kiti
data modify storage gcs:db handlers append value {hid:25,name:"kit_miner",label:"Miner Kit",description:"Gives Efficiency V diamond tools and supplies",auth_level:2,enabled:1b,category:"utility",command:"function gcs:handlers/builtin_extra/kit_miner"}

# Update metadata
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "System Install v3.1.0"

tellraw @a [{"text":"[GCS] ","color":"gold"},{"text":"25 default handlers loaded. Limit: 50.","color":"green"}]
