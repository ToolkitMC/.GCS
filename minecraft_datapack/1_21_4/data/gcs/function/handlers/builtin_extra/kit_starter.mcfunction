# Başlangıç kiti ver
give @s minecraft:iron_sword 1
give @s minecraft:iron_pickaxe 1
give @s minecraft:iron_axe 1
give @s minecraft:iron_shovel 1
give @s minecraft:iron_helmet 1
give @s minecraft:iron_chestplate 1
give @s minecraft:iron_leggings 1
give @s minecraft:iron_boots 1
give @s minecraft:cooked_beef 16
give @s minecraft:bread 8
give @s minecraft:torch 32
give @s minecraft:golden_apple 2
title @s actionbar [{"text":"🎒 Başlangıç Kiti Verildi!","color":"gold","bold":true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"[🎒] ","color":"gold","bold":true},{"text":"Başlangıç kiti alındı!","color":"green"}]
