# Mevcut handler sayısını al
execute store result score #current gcs.count run data get storage gcs:db handlers

# İstatistikleri göster
tellraw @s [{"text":"📊 ","color":"yellow"},{"text":"Sistem Durumu","color":"gold","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Handler Sayısı: ","color":"gray"},{"score":{"name":"#current","objective":"gcs.count"},"color":"aqua"},{"text":"/","color":"dark_gray"},{"text":"25","color":"green"}]

# Slot durumu
execute store result score #slots gcs.count run scoreboard players get #max gcs.count
scoreboard players operation #slots gcs.count -= #current gcs.count
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Boş Slot: ","color":"gray"},{"score":{"name":"#slots","objective":"gcs.count"},"color":"yellow"}]

# Minimum kontrol
execute if score #current gcs.count < #min gcs.count run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"⚠ Minimum (13) altında!","color":"red","bold":true}]
execute unless score #current gcs.count < #min gcs.count run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"✓ Sistem sağlıklı","color":"green"}]
