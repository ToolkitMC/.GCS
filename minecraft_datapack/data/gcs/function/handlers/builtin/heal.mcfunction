# Advanced Heal Handler
# Oyuncuyu tam iyileştirir + güçlü bonus efektler

# Ana iyileştirme
effect give @s minecraft:instant_health 1 10 true
effect give @s minecraft:regeneration 10 3 false
effect give @s minecraft:saturation 1 10 true
effect give @s minecraft:absorption 60 2 false

# Negatif efektleri temizle
effect clear @s poison
effect clear @s wither
effect clear @s hunger
effect clear @s weakness
effect clear @s slowness
effect clear @s mining_fatigue
effect clear @s nausea

# Zengin partikül efektleri
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.8 0.3 0.2 50 force
particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 25 force
particle minecraft:glow ~ ~1.5 ~ 0.5 1 0.5 0.1 40 force
particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force

# Ses efektleri - katmanlı iyileştirme
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.2
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.7 1.8
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 0.8
playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5 1.5

# Mesaj
tellraw @s [{"text":"[❤] ","color":"red","bold":true},{"text":"TAM İYİLEŞME! ","color":"green","bold":true},{"text":"Tüm hastalıklar temizlendi.","color":"aqua"}]

# Title efekti
title @s actionbar [{"text":"💚 ","color":"green"},{"text":"Sağlık Restore Edildi","color":"gold","bold":true},{"text":" 💚","color":"green"}]

# Kısa glow
effect give @s glowing 2 0 true

