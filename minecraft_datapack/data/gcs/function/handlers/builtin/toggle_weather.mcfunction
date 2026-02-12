# Weather Toggle Handler
# Hava durumunu değiştirir

execute if predicate {"condition":"minecraft:weather_check","raining":false} run weather rain
execute if predicate {"condition":"minecraft:weather_check","raining":false} run tellraw @s [{"text":"[🌧] ","color":"aqua","bold":true},{"text":"Yağmur başladı!","color":"blue"}]

execute if predicate {"condition":"minecraft:weather_check","raining":true} run weather clear
execute if predicate {"condition":"minecraft:weather_check","raining":true} run tellraw @s [{"text":"[☀] ","color":"yellow","bold":true},{"text":"Hava açıldı!","color":"gold"}]
