# Clear Weather Handler
# Hava durumunu hemen açığa çevirir + güneş efektleri

# Havayı aç (1 saat = 72000 tick)
weather clear 72000

# Mesaj
tellraw @s [{"text":"[☀] ","color":"yellow","bold":true},{"text":"Hava TAM AÇIK! ","color":"gold","bold":true},{"text":"(1 saat)","color":"green"}]

# Güneş ışığı efektleri
particle minecraft:glow ~ ~2 ~ 3 2 3 0.1 200 force
particle minecraft:end_rod ~ ~3 ~ 2 1 2 0.2 100 force
particle minecraft:firework ~ ~1.5 ~ 1 1 1 0.3 50 force
particle minecraft:flash ~ ~2 ~ 0 0 0 0 3 force

# Ses efektleri
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.0 1.5
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 2.0
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.8

# Action bar tüm oyunculara
title @a actionbar [{"text":"☀ ","color":"yellow"},{"text":"Hava Açıldı","color":"gold","bold":true},{"text":" ☀","color":"yellow"}]

# Glow efekti (kısa süre)
effect give @s glowing 3 0 true
