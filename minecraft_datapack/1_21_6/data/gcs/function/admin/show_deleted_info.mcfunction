# Show detailed info for deleted handler
tellraw @s [{"text":"  ╔═══════════════════════════","color":"dark_red","bold":true}]
tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"🗑 DELETED HANDLER","color":"red","bold":true}]
tellraw @s [{"text":"  ╠═══════════════════════════","color":"dark_red"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"ID: ","color":"gray"},{"text":"#$(hid)","color":"red","bold":true}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"Name: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"Label: ","color":"gray"},{"text":"$(label)","color":"white"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"Description: ","color":"gray"},{"text":"$(description)","color":"aqua"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"Category: ","color":"gray"},{"text":"$(category)","color":"light_purple"}]
tellraw @s [{"text":"  ╚═══════════════════════════","color":"dark_red"}]

# Deletion confirmation effect
playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 0.7 0.8
particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 20 force