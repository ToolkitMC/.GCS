tag @s add gcs_frozen
effect give @s minecraft:slowness 999999 255 true
effect give @s minecraft:levitation 999999 0 true
tellraw @s [{"text":"[Freeze] ","color":"aqua","bold":true},{"text":"You are now frozen.","color":"red"}]
