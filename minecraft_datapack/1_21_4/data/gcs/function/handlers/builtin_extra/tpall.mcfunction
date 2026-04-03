# Teleport all players to you
function gcs:back/save
tp @a[gamemode=!spectator] @s
particle minecraft:portal ~ ~1 ~ 1 1 1 0.2 80 force
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
tellraw @a [{"text":"[⚡] ","color":"gold","bold":true},{"text":"All players ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" have been teleported to your location!","color":"white"}]
