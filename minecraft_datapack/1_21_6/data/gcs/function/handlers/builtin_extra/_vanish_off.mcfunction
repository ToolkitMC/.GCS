tag @s remove gcs_vanished
effect clear @s invisibility
effect clear @s night_vision
gamemode survival @s
title @s actionbar [{"text":"👁 Vanish ","color":"white","bold":true},{"text":"OFF","color":"yellow"}]
tellraw @s [{"text":"[👁] ","color":"white","bold":true},{"text":"Vanish mode disabled.","color":"gray"}]
