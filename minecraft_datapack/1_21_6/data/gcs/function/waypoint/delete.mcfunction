# Waypoint sil
execute unless score @s gcs.auth matches 2.. run return fail
$data remove storage gcs:waypoints points[{name:"$(name)"}]
$tellraw @s [{"text":"[✗] ","color":"red"},{"text":"Waypoint silindi: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
