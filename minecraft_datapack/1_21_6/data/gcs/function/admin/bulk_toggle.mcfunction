# ============================================
# GCS - Toplu Handler Active/Inactive
# Auth Level: 3 (Admin)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Admin (Level 3)","color":"red","bold":true},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

function gcs:backup/create_backup
# Toplu enable/disable handler'lar
# Usage: /function gcs:admin/bulk_toggle {action:"enable"} veya {action:"disable"}

# Action parametresini check et ve uygula
$execute if entity @s run data modify storage gcs:temp bulk_action set value "$(action)"

# Enable
execute if data storage gcs:temp {bulk_action:"enable"} run data modify storage gcs:db handlers[].enabled set value 1b
execute if data storage gcs:temp {bulk_action:"enable"} run tellraw @s ""
execute if data storage gcs:temp {bulk_action:"enable"} run tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"All handlers enabled!","color":"green"}]
execute if data storage gcs:temp {bulk_action:"enable"} run tellraw @s ""

# Disable
execute if data storage gcs:temp {bulk_action:"disable"} run data modify storage gcs:db handlers[].enabled set value 0b
execute if data storage gcs:temp {bulk_action:"disable"} run tellraw @s ""
execute if data storage gcs:temp {bulk_action:"disable"} run tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"All handlers disabled!","color":"green"}]
execute if data storage gcs:temp {bulk_action:"disable"} run tellraw @s ""

# Temizlik
data remove storage gcs:temp bulk_action
