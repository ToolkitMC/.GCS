# Advanced Fly Toggle Handler
# Uçma yeteneğini efektlerle aç/kapat

# Mevcut durumu kontrol et
execute store success score #has_fly gcs.temp if entity @s[nbt={abilities:{mayfly:1b}}]

# Fly kapalıysa aç
execute unless score #has_fly gcs.temp matches 1 run tellraw @s [{"text":"[🪶] ","color":"light_purple","bold":true},{"text":"Uçuş Modu ","color":"aqua","bold":true},{"text":"AKTİF","color":"green","bold":true}]
execute unless score #has_fly gcs.temp matches 1 at @s run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0.2 50 force
execute unless score #has_fly gcs.temp matches 1 at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.3 0.8 0.3 0.1 30 force
execute unless score #has_fly gcs.temp matches 1 run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 0.5 1.5
execute unless score #has_fly gcs.temp matches 1 run effect give @s slow_falling 10 0 true
execute unless score #has_fly gcs.temp matches 1 run data modify entity @s abilities.mayfly set value 1b

# Fly açıksa kapat
execute if score #has_fly gcs.temp matches 1 run data modify entity @s abilities.mayfly set value 0b
execute if score #has_fly gcs.temp matches 1 run data modify entity @s abilities.flying set value 0b
execute if score #has_fly gcs.temp matches 1 run tellraw @s [{"text":"[🪶] ","color":"gray","bold":true},{"text":"Uçuş Modu ","color":"dark_gray"},{"text":"KAPALI","color":"red","bold":true}]
execute if score #has_fly gcs.temp matches 1 at @s run particle minecraft:cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.05 30 force
execute if score #has_fly gcs.temp matches 1 run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.5 0.8
execute if score #has_fly gcs.temp matches 1 run effect give @s slow_falling 5 0 true

# Temizlik
scoreboard players reset #has_fly gcs.temp
