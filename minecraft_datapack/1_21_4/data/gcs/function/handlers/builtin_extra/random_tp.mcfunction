# Rastgele konuma ışınlan (overworld, -2000..2000 XZ)
function gcs:back/save
execute in minecraft:overworld run spreadplayers ~ ~ 0 2000 false @s
tellraw @s [{"text":"[🎲] ","color":"light_purple","bold":true},{"text":"Rastgele bir konuma ışınlandınız! ","color":"white"},{"text":"Back ile geri dönebilirsiniz.","color":"gray"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1.0 1.5
