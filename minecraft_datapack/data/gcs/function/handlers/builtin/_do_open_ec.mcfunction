# Enderchest GUI'sini oyuncuya göster
# Bu selector tabanlı çalışır

# GUI aç
execute at @s run setblock ~ 255 ~ minecraft:ender_chest
execute at @s run data merge block ~ 255 ~ {CustomName:'{"text":"📦 Enderchest","color":"light_purple","bold":true}'}

# Oyuncuya aç
execute at @s positioned ~ 255 ~ run function gcs:handlers/builtin/_trigger_ec_open

# Bloğu temizle
execute at @s run setblock ~ 255 ~ air
