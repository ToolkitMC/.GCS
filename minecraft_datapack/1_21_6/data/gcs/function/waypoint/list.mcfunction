# List all waypoints
execute unless score @s gcs.auth matches 1.. run return fail
tellraw @s ""
tellraw @s [{"text":"══ Waypoints ══","color":"light_purple","bold":true}]
execute store result score #wp_count gcs.count run data get storage gcs:waypoints points
execute if score #wp_count gcs.count matches ..0 run tellraw @s [{"text":"  No waypoints saved yet.","color":"gray"}]
execute if score #wp_count gcs.count matches 1.. run tellraw @s [{"nbt":"points[]","storage":"gcs:waypoints","separator":{"text":"\n","color":"gray"}}]
tellraw @s ""
