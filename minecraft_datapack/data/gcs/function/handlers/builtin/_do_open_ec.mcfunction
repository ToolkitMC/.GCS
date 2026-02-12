# Enderchest GUI'sini oyuncuya göster
# Bu selector tabanlı çalışır

# GUI aç
execute at @s run setblock ~ ~ ~ minecraft:ender_chest
execute at @s run data merge block ~ ~ ~ {CustomName:'{"text":"📦 Enderchest","color":"light_purple","bold":true}'}

# Oyuncuya aç
execute at @s positioned ~ ~ ~ run function gcs:handlers/builtin/_trigger_ec_open