# Advanced Particle Aura Handler
# Continuous particle aura on the player — correct toggle logic

# Aura durumunu check et
execute unless score @s gcs.aura matches 0.. run scoreboard players set @s gcs.aura 0

# If aura is off, turn it on
execute if score @s gcs.aura matches 0 run scoreboard players set @s gcs.aura 1
execute if score @s gcs.aura matches 0 run tellraw @s [{"text":"[✨] ","color":"light_purple","bold":true},{"text":"Particle Aura ","color":"aqua","bold":true},{"text":"ON","color":"green"}]
execute if score @s gcs.aura matches 0 run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1.0 1.5
execute if score @s gcs.aura matches 0 run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 1 0.5 0.5 50 force
execute if score @s gcs.aura matches 0 run particle minecraft:glow ~ ~1 ~ 0.3 0.5 0.3 0.1 30 force

# If aura is on, turn it off  
execute if score @s gcs.aura matches 1 run scoreboard players set @s gcs.aura 0
execute if score @s gcs.aura matches 1 run tellraw @s [{"text":"[✨] ","color":"dark_gray","bold":true},{"text":"Particle Aura ","color":"gray"},{"text":"OFF","color":"red"}]
execute if score @s gcs.aura matches 1 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1.0 1.5
execute if score @s gcs.aura matches 1 run particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0.05 20 force

# NOTE: The actual aura runs in the tick function every tick
# Players with gcs.aura=1 receive particles every tick

