execute store result score #last_idx gcs.count run data get storage gcs:db handlers
scoreboard players remove #last_idx gcs.count 1
execute store result storage gcs:temp last_idx int 1 run scoreboard players get #last_idx gcs.count
function gcs:admin/_set_last_hid with storage gcs:temp
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "Handler Added"
tellraw @s [{"text":"  ID: ","color":"gray"},{"score":{"name":"#new_hid","objective":"gcs.hid"},"color":"aqua"}]
