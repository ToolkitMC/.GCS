# ============================================
# GCS - Toplu Handler Aktif/Pasif
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Toplu enable/disable handler'lar
# Kullanım: /function gcs:admin/bulk_toggle {action:"enable"} veya {action:"disable"}

# Action parametresini kontrol et ve uygula
$execute if entity @s run data modify storage gcs:temp bulk_action set value "$(action)"

# Enable
execute if data storage gcs:temp {bulk_action:"enable"} run data modify storage gcs:db handlers[].enabled set value 1b
execute if data storage gcs:temp {bulk_action:"enable"} run tellraw @s ""
execute if data storage gcs:temp {bulk_action:"enable"} run tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Tüm handler'lar aktifleştirildi!","color":"green"}]
execute if data storage gcs:temp {bulk_action:"enable"} run tellraw @s ""

# Disable
execute if data storage gcs:temp {bulk_action:"disable"} run data modify storage gcs:db handlers[].enabled set value 0b
execute if data storage gcs:temp {bulk_action:"disable"} run tellraw @s ""
execute if data storage gcs:temp {bulk_action:"disable"} run tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Tüm handler'lar pasifleştirildi!","color":"green"}]
execute if data storage gcs:temp {bulk_action:"disable"} run tellraw @s ""

# Temizlik
data remove storage gcs:temp bulk_action
