# Night Vision Toggle Handler  
# Toggle night vision effect

# Night vision yoksa ver (10 dk)
execute unless score #has_nv gcs.temp matches 1.. run effect give @s night_vision 600 0
execute unless score #has_nv gcs.temp matches 1.. run tellraw @s [{"text":"[👁] ","color":"dark_purple","bold":true},{"text":"Night Vision ","color":"light_purple","bold":true},{"text":"ON","color":"green"}]
execute unless score #has_nv gcs.temp matches 1.. run particle minecraft:glow ~ ~1.7 ~ 0.3 0.3 0.3 0 15 force
execute unless score #has_nv gcs.temp matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 25 force
execute unless score #has_nv gcs.temp matches 1.. run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 1.8
execute unless score #has_nv gcs.temp matches 1.. run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 0.7 0.7

# Remove night vision if present
execute if score #has_nv gcs.temp matches 1.. run effect clear @s night_vision
execute if score #has_nv gcs.temp matches 1.. run tellraw @s [{"text":"[👁] ","color":"dark_gray","bold":true},{"text":"Night vision ","color":"gray"},{"text":"off","color":"red"}]
execute if score #has_nv gcs.temp matches 1.. run particle minecraft:smoke ~ ~1.7 ~ 0.3 0.3 0.3 0.01 10 force
execute if score #has_nv gcs.temp matches 1.. run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 0.8
