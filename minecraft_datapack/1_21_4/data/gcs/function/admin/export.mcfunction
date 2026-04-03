# ============================================
# GCS - Export/Backup
# Auth Level: 3 (Admin)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Admin (Level 3)","color":"red","bold":true},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Print all data to chat (no clickable button)
execute store result score #total gcs.count run data get storage gcs:db handlers
tellraw @s ""
tellraw @s [{"text":"[💾] ","color":"aqua","bold":true},{"text":"EXPORT/BACKUP","color":"gold","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Handler Count: ","color":"gray"},{"score":{"name":"#total","objective":"gcs.count"},"color":"aqua"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Storage: ","color":"gray"},{"text":"gcs:db","color":"aqua"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Command: ","color":"gray"},{"text":"/data get storage gcs:db","color":"green"}]
tellraw @s ""
tellraw @s [{"text":"[!] ","color":"red"},{"text":"To manually copy data, run in console: /data get storage gcs:db","color":"gray"}]
tellraw @s ""
