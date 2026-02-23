# Advanced Feed Handler
# Açlık ve doygunluğu tam seviyeye getirir + bonus efektler

# Açlığı doldur
effect give @s saturation 1 255 true
effect give @s instant_health 1 0 true

# Bonus efektler (30 sn)
effect give @s regeneration 30 1
effect give @s absorption 60 1

# Mesaj ve efektler
tellraw @s [{"text":"[🍖] ","color":"gold","bold":true},{"text":"Tam doygunluk! ","color":"yellow"},{"text":"Sağlığın yenilendi.","color":"green"}]

# Partikül efektleri
particle minecraft:heart ~ ~2 ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:happy_villager ~ ~1 ~ 0.5 1 0.5 0 20 force
particle minecraft:glow ~ ~0.5 ~ 0.3 0.5 0.3 0.1 15 force

# Ses efektleri
playsound minecraft:entity.player.burp master @s ~ ~ ~ 1.0 1.0
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 0.8 1.0
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5

# Action bar bildirimi
title @s actionbar [{"text":"💚 ","color":"green"},{"text":"Sağlık ve Doygunluk Yenilendi","color":"gold"},{"text":" 💚","color":"green"}]
