# Usage: /function gcs:waypoint/go {name:"evim"}
execute unless score @s gcs.auth matches 1.. run return fail
$data modify storage gcs:temp wp set from storage gcs:waypoints points[{name:"$(name)"}]
execute unless data storage gcs:temp wp run tellraw @s [{"text":"[!] ","color":"red"},{"text":"Waypoint not found!","color":"gray"}]
execute unless data storage gcs:temp wp run return fail
# Flat keys — dotted macro names are not allowed
data modify storage gcs:temp wpx set from storage gcs:temp wp.x
data modify storage gcs:temp wpy set from storage gcs:temp wp.y
data modify storage gcs:temp wpz set from storage gcs:temp wp.z
data modify storage gcs:temp wpname set from storage gcs:temp wp.name
function gcs:waypoint/_tp with storage gcs:temp
data remove storage gcs:temp wp
data remove storage gcs:temp wpx
data remove storage gcs:temp wpy
data remove storage gcs:temp wpz
data remove storage gcs:temp wpname
