tag @s add gcs_vanished
effect give @s minecraft:invisibility 999999 0 true
effect give @s minecraft:night_vision 999999 0 true
gamemode spectator @s
title @s actionbar [{"text":"👁 Vanish ","color":"gray","bold":true},{"text":"ON","color":"dark_gray"}]
tellraw @s [{"text":"[👁] ","color":"dark_gray","bold":true},{"text":"Vanish mode enabled.","color":"gray"}]
