# ============================================
# GCS - Auth Level Verme
# Auth Level: 3 (Admin)
# ============================================

# Player check
$execute unless entity @p[name=$(player),limit=1] run return 0

function gcs:backup/create_backup
# Permission check
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Admin (Level 3)","color":"red","bold":true},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

function gcs:backup/create_backup
# Oyuncuya yetki ver
$scoreboard players set @a[name="$(player)"] gcs.auth $(level)

# Success message
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Permission level granted!","color":"green"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Player: ","color":"gray"},{"text":"$(player)","color":"yellow"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Seviye: ","color":"gray"},{"text":"$(level)","color":"aqua"}]
tellraw @s ""

# Notify target player (no clickable button)
$tellraw @a[name="$(player)"] [{"text":"[GCS] ","color":"gold","bold":true},{"text":"You have been granted ","color":"white"},{"text":"Level $(level)","color":"aqua"},{"text":" permission! Use /trigger gcs.ui to open the menu.","color":"white"}]
