# Advanced Particle Aura Handler
# Oyuncuya sürekli partikül efekti aura - doğru toggle mantığı

# Aura durumunu kontrol et
execute unless score @s gcs.aura matches 0.. run scoreboard players set @s gcs.aura 0

# Aura kapalıysa aç
execute if score @s gcs.aura matches 0 run scoreboard players set @s gcs.aura 1
execute if score @s gcs.aura matches 0 run tellraw @s [{"text":"[✨] ","color":"light_purple","bold":true},{"text":"Partikül Aurası ","color":"aqua","bold":true},{"text":"AKTİF","color":"green"}]
execute if score @s gcs.aura matches 0 run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1.0 1.5
execute if score @s gcs.aura matches 0 run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 1 0.5 0.5 50 force
execute if score @s gcs.aura matches 0 run particle minecraft:glow ~ ~1 ~ 0.3 0.5 0.3 0.1 30 force

# Aura açıksa kapat  
execute if score @s gcs.aura matches 1 run scoreboard players set @s gcs.aura 0
execute if score @s gcs.aura matches 1 run tellraw @s [{"text":"[✨] ","color":"dark_gray","bold":true},{"text":"Partikül Aurası ","color":"gray"},{"text":"KAPALI","color":"red"}]
execute if score @s gcs.aura matches 1 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1.0 1.5
execute if score @s gcs.aura matches 1 run particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0.05 20 force

# NOT: Asıl aura efekti tick fonksiyonunda sürekli çalışmalı
# gcs.aura=1 olan oyunculara her tick partikül gösterimi yapılır

