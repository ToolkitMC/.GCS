# ============================================
# GCS - Bakım Modu
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Toggle
$scoreboard players set #mm gcs.temp $(action)

# Yeni durumu kontrol et
execute if score #mm gcs.temp matches 2 run function gcs:admin/maintenance_on
execute if score #mm gcs.temp matches 1 run function gcs:admin/maintenance_off
