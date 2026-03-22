# Kullanım: /function gcs:waypoint/save {name:"evim"}
execute unless score @s gcs.auth matches 1.. run return fail
# Mevcut uzunluğu öğren — yeni eleman bu index'te olacak
execute store result score #wp_idx gcs.count run data get storage gcs:waypoints points
# Placeholder ile ekle
$data modify storage gcs:waypoints points append value {name:"$(name)",owner:"$(name)",dim:"overworld",x:0.0d,y:64.0d,z:0.0d}
# Koordinatları güncelle (pozitif index = mevcut uzunluk)
execute store result storage gcs:temp saveidx int 1 run scoreboard players get #wp_idx gcs.count
execute store result storage gcs:temp savepos.x double 1 run data get entity @s Pos[0]
execute store result storage gcs:temp savepos.y double 1 run data get entity @s Pos[1]
execute store result storage gcs:temp savepos.z double 1 run data get entity @s Pos[2]
function gcs:waypoint/_save_coords with storage gcs:temp
data remove storage gcs:temp saveidx
data remove storage gcs:temp savepos
$tellraw @s [{"text":"[📍] ","color":"light_purple","bold":true},{"text":"Waypoint kaydedildi: ","color":"white"},{"text":"$(name)","color":"yellow"}]
