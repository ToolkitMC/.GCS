# ============================================
# GCS - Yapılandırma İçe Aktarma
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Import configuration
tellraw @s ""
tellraw @s [{"text":"[📥] ","color":"blue","bold":true},{"text":"Yapılandırma İçe Aktarma","color":"gold"}]
tellraw @s ""

tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Manuel İçe Aktarma:","color":"white"}]
tellraw @s [{"text":"  1. ","color":"dark_gray"},{"text":"Export ile handler verilerini dışa aktarın","color":"gray"}]
tellraw @s [{"text":"  2. ","color":"dark_gray"},{"text":"Verileri kopyalayın","color":"gray"}]
tellraw @s [{"text":"  3. ","color":"dark_gray"},{"text":"Şu komutu kullanın:","color":"gray"}]
tellraw @s [{"text":"     ","color":"dark_gray"},{"text":"/data modify storage gcs:db handlers set value [VERİLER]","color":"green","clickEvent":{"action":"suggest_command","value":"/data modify storage gcs:db handlers set value "},"hoverEvent":{"action":"show_text","value":"Handler verilerini içe aktar"}}]
tellraw @s ""

