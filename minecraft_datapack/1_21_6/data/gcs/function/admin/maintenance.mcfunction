# ============================================
# GCS - Maintenance Mode
# Auth Level: 3 (Admin)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Admin (Level 3)","color":"red","bold":true},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Toggle
$scoreboard players set #mm gcs.temp $(action)

# Yeni durumu check et
execute if score #mm gcs.temp matches 2 run function gcs:admin/maintenance_on
execute if score #mm gcs.temp matches 1 run function gcs:admin/maintenance_off
