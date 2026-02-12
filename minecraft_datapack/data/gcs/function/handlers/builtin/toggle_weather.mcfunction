# Weather Toggle Handler
# Hava durumunu değiştirir (Clear ↔ Rain ↔ Thunder döngüsü)

# Açıksa → Yağmura çevir
execute unless score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run weather rain 600
execute unless score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run tellraw @s [{"text":"[🌧] ","color":"aqua","bold":true},{"text":"Yağmur başladı!","color":"blue"}]
execute unless score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run particle minecraft:rain ~ ~2 ~ 2 1 2 0 100 force
execute unless score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run playsound minecraft:weather.rain master @s ~ ~ ~ 0.5 1

# Yağmurluysa → Fırtınaya çevir
execute if score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run weather thunder 600
execute if score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run tellraw @s [{"text":"[⚡] ","color":"dark_purple","bold":true},{"text":"Fırtına başladı!","color":"light_purple"}]
execute if score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run particle minecraft:electric_spark ~ ~2 ~ 2 1 2 0.5 50 force
execute if score #is_clear gcs.temp matches 1 unless score #is_thunder gcs.temp matches 1 run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.3 1.2

# Fırtınalıysa → Açığa çevir  
execute if score #is_thunder gcs.temp matches 1 run weather clear 600
execute if score #is_thunder gcs.temp matches 1 run tellraw @s [{"text":"[☀] ","color":"yellow","bold":true},{"text":"Hava açıldı!","color":"gold"}]
execute if score #is_thunder gcs.temp matches 1 run particle minecraft:glow ~ ~2 ~ 2 1 2 0.1 100 force
execute if score #is_thunder gcs.temp matches 1 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.5
