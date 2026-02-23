# Set Day Handler
# Zamanı gündüze (öğlen) ayarlar

# Zamanı öğlene ayarla (6000 tick)
time set 6000

# Mesaj
tellraw @s [{"text":"[🌅] ","color":"gold","bold":true},{"text":"Zaman: ","color":"yellow"},{"text":"ÖĞLEN","color":"white","bold":true}]

# Gün ışığı efektleri
particle minecraft:glow ~ ~2 ~ 2 1 2 0.1 100 force
particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.1 50 force
particle minecraft:scrape ~ ~0.5 ~ 1 0.5 1 0 30 force

# Ses
playsound minecraft:block.bell.use master @s ~ ~ ~ 1.0 1.5
playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.7 1.2

# Title
title @s times 10 40 10
title @s title [{"text":"🌞","color":"gold"}]
title @s subtitle [{"text":"Günaydın!","color":"yellow"}]
