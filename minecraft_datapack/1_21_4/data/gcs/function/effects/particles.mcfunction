# GCS Particle Effects
execute store result score #eff gcs.temp run data get entity @s active_effects

# 1 - Happy Villager
execute if score @s gcs.effect matches 1 run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
execute if score @s gcs.effect matches 1 run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.05 10 force

# 2 - Portal
execute if score @s gcs.effect matches 2 run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 1 100 force
execute if score @s gcs.effect matches 2 run particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 50 force
execute if score @s gcs.effect matches 2 run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1

# 3 - Kalp
execute if score @s gcs.effect matches 3 run particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 0.1 15 force
execute if score @s gcs.effect matches 3 run particle minecraft:glow ~ ~1 ~ 0.5 1 0.5 0.05 30 force
execute if score @s gcs.effect matches 3 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5

# 4 - Enchant
execute if score @s gcs.effect matches 4 run particle minecraft:enchant ~ ~1 ~ 0.5 1 0.5 1 50 force
execute if score @s gcs.effect matches 4 run particle minecraft:end_rod ~ ~1 ~ 0.3 1 0.3 0.1 20 force
execute if score @s gcs.effect matches 4 run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1

# 5 - Angry
execute if score @s gcs.effect matches 5 run particle minecraft:angry_villager ~ ~2 ~ 0.5 0.5 0.5 0 5 force
execute if score @s gcs.effect matches 5 run particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 20 force
execute if score @s gcs.effect matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

# 6 - Rainbow (dust)
execute if score @s gcs.effect matches 6 run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.5} ~ ~2 ~ 0.5 0.5 0.5 0 3 force
execute if score @s gcs.effect matches 6 run particle minecraft:dust{color:[1.0f,0.5f,0.0f],scale:1.5} ~ ~1.8 ~ 0.5 0.5 0.5 0 3 force
execute if score @s gcs.effect matches 6 run particle minecraft:dust{color:[1.0f,1.0f,0.0f],scale:1.5} ~ ~1.6 ~ 0.5 0.5 0.5 0 3 force
execute if score @s gcs.effect matches 6 run particle minecraft:dust{color:[0.0f,1.0f,0.0f],scale:1.5} ~ ~1.4 ~ 0.5 0.5 0.5 0 3 force
execute if score @s gcs.effect matches 6 run particle minecraft:dust{color:[0.0f,0.5f,1.0f],scale:1.5} ~ ~1.2 ~ 0.5 0.5 0.5 0 3 force
execute if score @s gcs.effect matches 6 run particle minecraft:dust{color:[0.5f,0.0f,1.0f],scale:1.5} ~ ~1.0 ~ 0.5 0.5 0.5 0 3 force

# 7 - Ruh
execute if score @s gcs.effect matches 7 run particle minecraft:soul ~ ~0.1 ~ 0.3 0 0.3 0.01 10 force
execute if score @s gcs.effect matches 7 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 5 force

# 8 - Patlama
execute if score @s gcs.effect matches 8 run particle minecraft:end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0.2 30 force
execute if score @s gcs.effect matches 8 run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
execute if score @s gcs.effect matches 8 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

scoreboard players set @s gcs.effect 0
