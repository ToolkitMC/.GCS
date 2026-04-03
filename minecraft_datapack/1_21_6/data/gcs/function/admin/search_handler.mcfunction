# ============================================
# GCS - Handler Search Sistemi
# Auth Level: 2 (Moderator+)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Moderator (Level 2)","color":"gold"},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 2.. run return 0

# Search yap
scoreboard players set #found gcs.count 0
$data modify storage gcs:temp search_query set value "$(query)"
execute store result score #total gcs.count run data get storage gcs:db handlers
scoreboard players set #index gcs.count 0
function gcs:admin/_search_loop

# No results → open dialog
execute if score #found gcs.count matches 0 run function gcs:ui/show {ui:"gcs:admin/search_handler_form"}

# Temizlik
data remove storage gcs:temp search_query
