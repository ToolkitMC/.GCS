# Day/Night Toggle Handler
# Gündüz/gece döngüsünü değiştirir

# Mevcut zamanı kaydet
execute store result score #time gcs.count run time query daytime

# Gündüz ise geceye çevir
execute if score #time gcs.count matches 0..12000 run time set 13000
execute if score #time gcs.count matches 0..12000 run tellraw @s [{"text":"[🌙] ","color":"dark_blue","bold":true},{"text":"Gece oldu!","color":"blue"}]
execute if score #time gcs.count matches 0..12000 run particle minecraft:glow_squid_ink ~ ~1 ~ 0.5 1 0.5 0.1 50 force
execute if score #time gcs.count matches 0..12000 run particle minecraft:soul ~ ~2 ~ 1 0.5 1 0.05 30 force
execute if score #time gcs.count matches 0..12000 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.7 0.8

# Gece ise gündüze çevir
execute if score #time gcs.count matches 12001.. run time set 0
execute if score #time gcs.count matches 12001.. run tellraw @s [{"text":"[☀] ","color":"yellow","bold":true},{"text":"Gündüz oldu!","color":"gold"}]
execute if score #time gcs.count matches 12001.. run particle minecraft:glow ~ ~1 ~ 0.5 1 0.5 0.1 50 force
execute if score #time gcs.count matches 12001.. run particle minecraft:end_rod ~ ~2 ~ 1 0.5 1 0.05 30 force
execute if score #time gcs.count matches 12001.. run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.7 1.2
