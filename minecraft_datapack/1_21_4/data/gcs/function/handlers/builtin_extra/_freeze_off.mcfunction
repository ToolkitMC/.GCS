tag @s remove gcs_frozen
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tellraw @s [{"text":"[Freeze] ","color":"green","bold":true},{"text":"You are now unfrozen.","color":"white"}]
