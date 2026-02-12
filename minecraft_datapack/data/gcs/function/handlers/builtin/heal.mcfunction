# Heal Handler
# Oyuncuyu tam iyileştirir

effect give @s minecraft:instant_health 1 10 true
effect give @s minecraft:regeneration 5 2 false
effect give @s minecraft:saturation 1 10 true

particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2

tellraw @s [{"text":"[❤] ","color":"red","bold":true},{"text":"Tamamen iyileştin!","color":"green"}]
