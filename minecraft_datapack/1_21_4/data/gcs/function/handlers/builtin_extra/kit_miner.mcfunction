# Miner kit — Efficiency V diamond tools + supplies
give @s minecraft:diamond_pickaxe[minecraft:enchantments={efficiency:5,unbreaking:3,fortune:3,mending:1}] 1
give @s minecraft:diamond_shovel[minecraft:enchantments={efficiency:5,unbreaking:3,deletek_touch:1}] 1
give @s minecraft:diamond_axe[minecraft:enchantments={efficiency:5,unbreaking:3}] 1
give @s minecraft:torch 64
give @s minecraft:chest 4
give @s minecraft:crafting_table 2
give @s minecraft:cooked_beef 32
give @s minecraft:golden_apple 4
give @s minecraft:water_bucket 1
give @s minecraft:iron_ingot 32
title @s actionbar [{"text":"Miner Kit Ready!","color":"aqua","bold":true}]
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"[Kit] ","color":"aqua","bold":true},{"text":"Miner kit received!","color":"green"}]
