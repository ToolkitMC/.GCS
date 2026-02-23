# Set Night Handler
# Zamanı geceye (gece yarısı) ayarlar

# Zamanı gece yarısına ayarla (18000 tick)
time set 18000

# Mesaj
tellraw @s [{"text":"[🌙] ","color":"dark_blue","bold":true},{"text":"Zaman: ","color":"blue"},{"text":"GECE YARISI","color":"dark_purple","bold":true}]

# Gece efektleri
particle minecraft:soul ~ ~2 ~ 2 1 2 0.05 100 force
particle minecraft:glow_squid_ink ~ ~1.5 ~ 1 1 1 0.1 50 force
particle minecraft:smoke ~ ~1 ~ 0.5 1 0.5 0.02 30 force
particle minecraft:enchanted_hit ~ ~0.5 ~ 1 0.5 1 0.05 20 force

# Ses - gizemli gece sesleri
playsound minecraft:block.bell.use master @s ~ ~ ~ 1.0 0.5
playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 0.3 0.8
playsound minecraft:ambient.cave master @s ~ ~ ~ 0.5 1.0

# Title
title @s times 10 40 10
title @s title [{"text":"🌙","color":"dark_blue"}]
title @s subtitle [{"text":"İyi geceler...","color":"dark_purple"}]

# Kısa glow efekti
effect give @s glowing 2 0 true
