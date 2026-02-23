# ============================================
# GCS - Export/Backup
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Tüm veriyi chat'e yaz (tıklanabilir buton yok)
execute store result score #total gcs.count run data get storage gcs:db handlers
tellraw @s ""
tellraw @s [{"text":"[💾] ","color":"aqua","bold":true},{"text":"EXPORT/BACKUP","color":"gold","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Handler Sayısı: ","color":"gray"},{"score":{"name":"#total","objective":"gcs.count"},"color":"aqua"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Storage: ","color":"gray"},{"text":"gcs:db","color":"aqua"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Komut: ","color":"gray"},{"text":"/data get storage gcs:db","color":"green"}]
tellraw @s ""
tellraw @s [{"text":"[!] ","color":"red"},{"text":"Verileri elle kopyalamak için konsola: /data get storage gcs:db","color":"gray"}]
tellraw @s ""
