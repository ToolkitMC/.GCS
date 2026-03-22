# Firework Show Handler
# Oyuncunun etrafında görkemli havai fişek gösterisi

# Mesaj
tellraw @s [{"text":"[🎆] ","color":"light_purple","bold":true},{"text":"HAVAİ FİŞEK GÖSTERİSİ ","color":"gold","bold":true},{"text":"BAŞLIYOR!","color":"yellow"}]

# Ana patlama efekti
particle minecraft:end_rod ~ ~5 ~ 3 3 3 0.3 200 force
particle minecraft:explosion ~ ~5 ~ 2 2 2 0 5 force

# Çoklu renkli patlamalar
particle minecraft:end_rod ~ ~6 ~3 1 1 1 0.2 50 force
particle minecraft:end_rod ~3 ~7 ~ 1 1 1 0.2 50 force
particle minecraft:end_rod ~ ~8 ~-3 1 1 1 0.2 50 force
particle minecraft:end_rod ~-3 ~6 ~ 1 1 1 0.2 50 force

# Işıltılı efektler
particle minecraft:end_rod ~ ~5 ~ 2 3 2 0.3 100 force
particle minecraft:glow ~ ~4 ~ 3 2 3 0.1 150 force
particle minecraft:enchanted_hit ~ ~5 ~ 2 2 2 0.5 80 force

# Ses efektleri - katmanlı patlamalar
playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 2.0 1.0
playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 2.0 0.8
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1.5 1.2
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1.5 0.9
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 0.5

# Işık efekti (glowing)
effect give @s glowing 5 0 true

# Title efekti
title @a times 10 60 20
title @a title [{"text":"🎆","color":"light_purple"},{"text":" ","color":"white"},{"text":"🎇","color":"yellow"},{"text":" ","color":"white"},{"text":"✨","color":"aqua"}]
title @a subtitle [{"text":"Havai Fişek Şov!","color":"gold","bold":true}]

# Gecikmeli ikinci patlama (1 saniye sonra)
schedule function gcs:handlers/builtin/_firework_second 20t replace
