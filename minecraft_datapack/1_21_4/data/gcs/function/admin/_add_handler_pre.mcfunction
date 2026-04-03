execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Admin (Level 3) yetkisi gerekli!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0
function gcs:backup/create_backup
execute store result score #current gcs.count run data get storage gcs:db handlers
execute if score #current gcs.count >= #max gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler limiti doldu! (50/50)","color":"red"}]
execute if score #current gcs.count >= #max gcs.count run return fail
scoreboard players add #current gcs.count 1
execute store result score #new_hid gcs.hid run scoreboard players get #current gcs.count
