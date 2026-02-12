# Day/Night Toggle Handler
# Gündüz/gece döngüsünü değiştirir

execute store result score #time gcs.count run time query daytime

execute if score #time gcs.count matches 0..12000 run time set 13000
execute if score #time gcs.count matches 0..12000 run tellraw @s [{"text":"[🌙] ","color":"dark_blue","bold":true},{"text":"Gece oldu!","color":"blue"}]

execute if score #time gcs.count matches 12001.. run time set 0
execute if score #time gcs.count matches 12001.. run tellraw @s [{"text":"[☀] ","color":"yellow","bold":true},{"text":"Gündüz oldu!","color":"gold"}]
