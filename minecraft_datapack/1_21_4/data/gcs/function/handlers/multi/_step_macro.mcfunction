$data modify storage gcs:temp mc_cmd set from storage gcs:temp mc.commands[$(mc_idx)]
execute unless data storage gcs:temp {mc_cmd:""} run function gcs:handlers/multi/_exec with storage gcs:temp
scoreboard players add #mc_i gcs.count 1
execute if score #mc_i gcs.count < #mc_total gcs.count run function gcs:handlers/multi/_step
