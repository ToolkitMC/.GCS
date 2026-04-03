# Teleport to a random location in the overworld
function gcs:back/save
execute in minecraft:overworld run spreadplayers ~ ~ 0 2000 false @s
tellraw @s [{"text":"[RandomTP] ","color":"light_purple","bold":true},{"text":"Teleported to a random location! ","color":"white"},{"text":"Use Back to return.","color":"gray"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1.0 1.5
