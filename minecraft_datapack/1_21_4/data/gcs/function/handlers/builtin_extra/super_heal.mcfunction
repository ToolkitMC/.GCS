function gcs:handlers/builtin/heal
effect clear @s poison
effect clear @s wither
effect clear @s hunger
effect clear @s weakness
effect clear @s nausea
effect give @s absorption 120 3 false
effect give @s resistance 30 0 false
tellraw @s [{"text":"[💚] ","color":"green","bold":true},{"text":"Süper şifa uygulandı!","color":"green"}]
