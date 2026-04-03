tellraw @s ""
tellraw @s [{"text":"[✗] ","color":"red","bold":true},{"text":"Error: Insufficient Permission","color":"red"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Required Level: ","color":"gray"},{"text":"$(required)","color":"yellow"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Current Level: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"red"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Contact an admin.","color":"gray"}]
tellraw @s ""
