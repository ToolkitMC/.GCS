# Speed Boost Handler
# Hız artırıcı efekt paketi

# Speed yoksa ver (30 sn, Level 3)
execute unless score #has_speed gcs.temp matches 1.. run effect give @s speed 30 2
execute unless score #has_speed gcs.temp matches 1.. run effect give @s jump_boost 30 1
execute unless score #has_speed gcs.temp matches 1.. run tellraw @s [{"text":"[⚡] ","color":"yellow","bold":true},{"text":"HIZ ARTIŞI ","color":"gold","bold":true},{"text":"AKTİF!","color":"green"}]
execute unless score #has_speed gcs.temp matches 1.. run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute unless score #has_speed gcs.temp matches 1.. run particle minecraft:sweep_attack ~ ~1 ~ 1 0.5 1 0 10 force
execute unless score #has_speed gcs.temp matches 1.. run particle minecraft:gust ~ ~0.5 ~ 0.5 0.5 0.5 0.1 20 force
execute unless score #has_speed gcs.temp matches 1.. run playsound minecraft:entity.wind_charge.wind_burst master @s ~ ~ ~ 0.7 1.3
execute unless score #has_speed gcs.temp matches 1.. run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.3 2.0

# Speed varsa kaldır
execute if score #has_speed gcs.temp matches 1.. run effect clear @s speed
execute if score #has_speed gcs.temp matches 1.. run effect clear @s jump_boost
execute if score #has_speed gcs.temp matches 1.. run tellraw @s [{"text":"[⚡] ","color":"gray","bold":true},{"text":"Hız artışı ","color":"dark_gray"},{"text":"kaldırıldı","color":"red"}]
execute if score #has_speed gcs.temp matches 1.. run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.05 20 force
execute if score #has_speed gcs.temp matches 1.. run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.5 0.8
