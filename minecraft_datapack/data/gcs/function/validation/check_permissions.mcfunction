# Permission check
$execute store success score #has_perm gcs.count if score @s gcs.auth >= #required$(auth_level) gcs.count

execute if score #has_perm gcs.count matches 0 run tellraw @s [{"text":"[✗] ","color":"red","bold":true},{"text":"Yetersiz yetki!","color":"red"}]
execute if score #has_perm gcs.count matches 0 run return fail

return 1
