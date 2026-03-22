execute store result score #mc_total gcs.count run data get storage gcs:temp mc.commands
execute if score #mc_total gcs.count matches ..0 run return fail
scoreboard players set #mc_i gcs.count 0
function gcs:handlers/multi/_loop
