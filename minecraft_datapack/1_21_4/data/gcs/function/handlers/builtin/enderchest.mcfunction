# Enderchest Access Handler
# Her yerden enderchest'e erişim

# Enderchest GUI'sini aç
tellraw @s [{"text":"[📦] ","color":"dark_purple","bold":true},{"text":"Enderchest ","color":"light_purple","bold":true},{"text":"açılıyor...","color":"aqua"}]

# Partikül efektleri - Portal benzeri
particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 1 100 force
particle minecraft:reverse_portal ~ ~1.5 ~ 0.5 0.5 0.5 0.1 50 force
particle minecraft:enchanted_hit ~ ~0.5 ~ 0.5 0.5 0.5 0.1 20 force

# Ses efektleri
playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 1.0 1.0
playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.3 2.0

# Enderchest'i aç
execute if entity @s run function gcs:handlers/builtin/_do_open_ec
