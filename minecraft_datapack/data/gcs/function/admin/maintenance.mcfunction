# ============================================
# GCS - Bakım Modu
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Bakım modu durumunu al/oluştur
execute unless data storage gcs:db metadata.maintenance run data modify storage gcs:db metadata.maintenance set value 0b

# Toggle
execute if data storage gcs:db metadata{maintenance:0b} run data modify storage gcs:db metadata.maintenance set value 1b
execute if data storage gcs:db metadata{maintenance:1b} run data modify storage gcs:db metadata.maintenance set value 0b

# Yeni durumu kontrol et
execute if data storage gcs:db metadata{maintenance:1b} run function gcs:admin/maintenance_on
execute if data storage gcs:db metadata{maintenance:0b} run function gcs:admin/maintenance_off
