# ============================================
# GCS - Handler Active/Inactive
# Auth Level: 2 (Moderator+)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Moderator (Level 2)","color":"gold"},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 2.. run return 0

function gcs:backup/create_backup
# Check if handler exists
$execute store success score #found gcs.count if data storage gcs:db handlers[{hid:$(hid)}]

execute if score #found gcs.count matches 0 run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler not found!","color":"red"}]
execute if score #found gcs.count matches 0 run return fail

# Mevcut durumu al
$execute store success score #enabled gcs.count if data storage gcs:db handlers[{hid:$(hid),enabled:1b}]

# Toggle
$execute if score #enabled gcs.count matches 1 run data modify storage gcs:db handlers[{hid:$(hid)}].enabled set value 0b
$execute if score #enabled gcs.count matches 0 run data modify storage gcs:db handlers[{hid:$(hid)}].enabled set value 1b

# Yeni durumu al
$execute store success score #new_state gcs.count if data storage gcs:db handlers[{hid:$(hid),enabled:1b}]

# Info show
tellraw @s ""
$tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Handler $(hid) status toggled","color":"green"}]

execute if score #new_state gcs.count matches 1 run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Status: ","color":"gray"},{"text":"ON","color":"green","bold":true}]
execute if score #new_state gcs.count matches 0 run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Status: ","color":"gray"},{"text":"INACTIVE","color":"red","bold":true}]
tellraw @s ""
