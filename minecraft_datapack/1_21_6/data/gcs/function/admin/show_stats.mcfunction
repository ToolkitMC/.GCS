# Get current handler count
execute store result score #current gcs.count run data get storage gcs:db handlers

# Statsi show
tellraw @s [{"text":"📊 ","color":"yellow"},{"text":"System Status","color":"gold","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Handler Count: ","color":"gray"},{"score":{"name":"#current","objective":"gcs.count"},"color":"aqua"},{"text":"/","color":"dark_gray"},{"text":"25","color":"green"}]

# Slot durumu
execute store result score #slots gcs.count run scoreboard players get #max gcs.count
scoreboard players operation #slots gcs.count -= #current gcs.count
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Free Slots: ","color":"gray"},{"score":{"name":"#slots","objective":"gcs.count"},"color":"yellow"}]

# Minimum check
execute if score #current gcs.count < #min gcs.count run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"⚠ Below minimum (13)!","color":"red","bold":true}]
execute unless score #current gcs.count < #min gcs.count run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"✓ System healthy","color":"green"}]
