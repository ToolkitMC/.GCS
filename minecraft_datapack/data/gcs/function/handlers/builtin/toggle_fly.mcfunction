# Advanced Fly Toggle Handler
# Uçma yeteneğini efektlerle aç/kapat

# Fly kapalıysa aç
execute unless score #has_fly gcs.temp matches 1 run tellraw @s [{"text":"[🪶] ","color":"light_purple","bold":true},{"text":"Uçuş Modu ","color":"aqua","bold":true},{"text":"AKTİF","color":"green","bold":true}]
execute unless score #has_fly gcs.temp matches 1 run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0.2 50 force
execute unless score #has_fly gcs.temp matches 1 run particle minecraft:end_rod ~ ~1.5 ~ 0.3 0.8 0.3 0.1 30 force
execute unless score #has_fly gcs.temp matches 1 run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 0.5 1.5
execute unless score #has_fly gcs.temp matches 1 run effect give @s slow_falling 10 0 true

# Fly açıksa kapat
execute if score #has_fly gcs.temp matches 1 run ability @s mayfly false
execute if score #has_fly gcs.temp matches 1 run tellraw @s [{"text":"[🪶] ","color":"gray","bold":true},{"text":"Uçuş Modu ","color":"dark_gray"},{"text":"KAPALI","color":"red","bold":true}]
execute if score #has_fly gcs.temp matches 1 run particle minecraft:cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.05 30 force
execute if score #has_fly gcs.temp matches 1 run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.5 0.8
execute if score #has_fly gcs.temp matches 1 run effect give @s slow_falling 5 0 true
