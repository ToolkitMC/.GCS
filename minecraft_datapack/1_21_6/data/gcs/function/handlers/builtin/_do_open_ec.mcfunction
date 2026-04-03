# Enderchest GUI'sini player(s)ya show
# Works via selector

# Open GUI
execute at @s run setblock ~ ~ ~ minecraft:ender_chest
execute at @s run data merge block ~ ~ ~ {CustomName:'{"text":"📦 Enderchest","color":"light_purple","bold":true}'}

# Open for player
execute at @s positioned ~ ~ ~ run function gcs:handlers/builtin/_trigger_ec_open