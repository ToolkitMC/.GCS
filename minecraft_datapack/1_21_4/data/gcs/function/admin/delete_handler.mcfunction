# ============================================
# GCS - Handler Deleteme
# Auth Level: 3 (Admin)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Admin (Level 3)","color":"red","bold":true},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

function gcs:backup/create_backup
# Get current handler count
execute store result score #current gcs.count run data get storage gcs:db handlers

# Minimum check (do not go below 13)
execute if score #current gcs.count <= #min gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Minimum handler count (13) reached!","color":"red"}]
execute if score #current gcs.count <= #min gcs.count run tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Daha fazla handler deleteemezsiniz.","color":"yellow"}]
execute if score #current gcs.count <= #min gcs.count run return fail

# Get handler info (before delete)
$data modify storage gcs:temp deleted_handler set from storage gcs:db handlers[{hid:$(hid)}]

# Check if it exists
execute unless data storage gcs:temp deleted_handler run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler not found!","color":"red"}]
execute unless data storage gcs:temp deleted_handler run return fail

# Delete the handler
$data remove storage gcs:db handlers[{hid:$(hid)}]

# Update metadata
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "Handler Deleted"

# Success message
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Handler deleted successfully!","color":"green"}]
function gcs:admin/show_deleted_info with storage gcs:temp deleted_handler
tellraw @s ""

# Yeni durum
execute store result score #current gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Kalan Handler: ","color":"gray"},{"score":{"name":"#current","objective":"gcs.count"},"color":"aqua"},{"text":"/19","color":"dark_gray"}]
tellraw @s ""

# Temizle
data remove storage gcs:temp deleted_handler
