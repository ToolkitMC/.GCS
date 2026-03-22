# PvP kiti — 1.21.2+ enchantment syntax
give @s minecraft:diamond_sword[minecraft:enchantments={sharpness:5,unbreaking:3,looting:3}] 1
give @s minecraft:diamond_helmet[minecraft:enchantments={protection:4,unbreaking:3}] 1
give @s minecraft:diamond_chestplate[minecraft:enchantments={protection:4,unbreaking:3}] 1
give @s minecraft:diamond_leggings[minecraft:enchantments={protection:4,unbreaking:3}] 1
give @s minecraft:diamond_boots[minecraft:enchantments={protection:4,unbreaking:3,feather_falling:4}] 1
give @s minecraft:golden_apple 8
give @s minecraft:ender_pearl 8
give @s minecraft:bow[minecraft:enchantments={power:5,infinity:1,unbreaking:3}] 1
give @s minecraft:arrow 1
title @s actionbar [{"text":"⚔ PvP Kiti Hazır!","color":"red","bold":true}]
playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"[⚔] ","color":"red","bold":true},{"text":"PvP kiti alındı!","color":"green"}]
