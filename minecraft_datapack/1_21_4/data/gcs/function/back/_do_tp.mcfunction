execute store result storage gcs:temp backx double 1 run scoreboard players get @s gcs.back.x
execute store result storage gcs:temp backy double 1 run scoreboard players get @s gcs.back.y
execute store result storage gcs:temp backz double 1 run scoreboard players get @s gcs.back.z
function gcs:back/_exec with storage gcs:temp
data remove storage gcs:temp backx
data remove storage gcs:temp backy
data remove storage gcs:temp backz
tellraw @s [{"text":"[↩] ","color":"aqua","bold":true},{"text":"Önceki konuma döndün.","color":"white"}]
