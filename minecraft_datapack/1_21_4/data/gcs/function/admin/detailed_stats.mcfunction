# ============================================
# GCS - Detailed Stats
# Auth Level: 2 (Moderator+)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Moderator (Level 2)","color":"gold"},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 2.. run return 0

# Header
tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s [{"text":"  ","color":"gold"},{"text":"DETAILED STATS","color":"yellow","bold":true}]
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""

# General Stats
tellraw @s [{"text":"📊 ","color":"yellow","bold":true},{"text":"GENERAL","color":"gold","bold":true}]
execute store result score #total gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Total Handlers: ","color":"gray"},{"score":{"name":"#total","objective":"gcs.count"},"color":"aqua"},{"text":"/19","color":"dark_gray"}]

execute store result score #slots gcs.count run scoreboard players get #max gcs.count
scoreboard players operation #slots gcs.count -= #total gcs.count
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Free Slots: ","color":"gray"},{"score":{"name":"#slots","objective":"gcs.count"},"color":"yellow"}]

tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Minimum: ","color":"gray"},{"text":"13","color":"green"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Maximum: ","color":"gray"},{"text":"19","color":"red"}]

tellraw @s ""

# Active/Inactive Handler Count
tellraw @s [{"text":"🔧 ","color":"aqua","bold":true},{"text":"STATUS","color":"aqua","bold":true}]

# Calculate active handler count (simplified)
execute store result score #active gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Active: ","color":"gray"},{"text":"~","color":"green"},{"score":{"name":"#active","objective":"gcs.count"},"color":"green"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Inactive: ","color":"gray"},{"text":"~0","color":"red"}]

tellraw @s ""

# Category Distribution
tellraw @s [{"text":"📁 ","color":"gold","bold":true},{"text":"CATEGORIES","color":"gold","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Utility: ","color":"gray"},{"text":"~4","color":"white"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Teleport: ","color":"gray"},{"text":"~2","color":"aqua"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Ability: ","color":"gray"},{"text":"~3","color":"light_purple"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"World: ","color":"gray"},{"text":"~2","color":"green"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Admin: ","color":"gray"},{"text":"~2","color":"red"}]

tellraw @s ""

# Permission Level Distribution
tellraw @s [{"text":"👥 ","color":"green","bold":true},{"text":"PERMISSION LEVELS","color":"green","bold":true}]
execute store result score #auth1 gcs.count if entity @a[scores={gcs.auth=1}]
execute store result score #auth2 gcs.count if entity @a[scores={gcs.auth=2}]
execute store result score #auth3 gcs.count if entity @a[scores={gcs.auth=3}]

tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Level 1: ","color":"gray"},{"score":{"name":"#auth1","objective":"gcs.count"},"color":"green"},{"text":" player(s)","color":"dark_gray"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Level 2: ","color":"gray"},{"score":{"name":"#auth2","objective":"gcs.count"},"color":"gold"},{"text":" player(s)","color":"dark_gray"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Level 3: ","color":"gray"},{"score":{"name":"#auth3","objective":"gcs.count"},"color":"red"},{"text":" player(s)","color":"dark_gray"}]

tellraw @s ""

# Sistem Infoleri
tellraw @s [{"text":"ℹ️ ","color":"aqua","bold":true},{"text":"SYSTEM INFO","color":"aqua","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Version: ","color":"gray"},{"text":"1.0","color":"white"}]
execute if data storage gcs:db metadata.last_update run function gcs:admin/show_last_update
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Status: ","color":"gray"},{"text":"✓ Running","color":"green"}]

tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""
