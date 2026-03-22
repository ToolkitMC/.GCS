# Super Heal — tam iyileştirme + buff paketi
effect give @s minecraft:instant_health 1 10 true
effect give @s minecraft:regeneration 15 3 false
effect give @s minecraft:saturation 1 10 true
effect give @s minecraft:absorption 120 3 false
effect give @s minecraft:resistance 30 0 false
effect clear @s poison
effect clear @s wither
effect clear @s hunger
effect clear @s weakness
effect clear @s slowness
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s blindness
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.8 0.3 0.2 50 force
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.2
playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5 1.5
title @s actionbar [{"text":"💚 SÜPER ŞİFA ","color":"green","bold":true},{"text":"✨","color":"gold"}]
