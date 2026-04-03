# ============================================
# GCS - Handler Editme
# Auth Level: 3 (Admin)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Admin (Level 3)","color":"red","bold":true},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

function gcs:backup/create_backup
# Check if handler exists
$execute store success score #found gcs.count if data storage gcs:db handlers[{hid:$(hid)}]

execute if score #found gcs.count matches 0 run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler not found!","color":"red"}]
execute if score #found gcs.count matches 0 run return fail

# Delete first
$data remove storage gcs:db handlers[{hid:$(hid)}]

# Re-add with new data (same hid)
$data modify storage gcs:db handlers append value {hid:$(hid),name:"$(name)",label:"$(label)",description:"$(description)",auth_level:$(auth_level),enabled:1b,category:"$(category)",command:"$(command)"}

# Update metadata
data modify storage gcs:db metadata.last_update set value "Handler Updated"

# Success message
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Handler updated successfully!","color":"green"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"ID: ","color":"gray"},{"text":"$(hid)","color":"aqua"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Name: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Label: ","color":"gray"},{"text":"$(label)","color":"white"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Category: ","color":"gray"},{"text":"$(category)","color":"gold"}]
tellraw @s ""
