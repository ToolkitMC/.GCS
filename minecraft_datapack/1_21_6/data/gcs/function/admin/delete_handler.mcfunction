# ============================================
# GCS - Handler Silme
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Mevcut handler sayısını al
execute store result score #current gcs.count run data get storage gcs:db handlers

# Minimum kontrol (13'ün altına düşmesin)
execute if score #current gcs.count <= #min gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Minimum handler sayısına (13) ulaşıldı!","color":"red"}]
execute if score #current gcs.count <= #min gcs.count run tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Daha fazla handler silemezsiniz.","color":"yellow"}]
execute if score #current gcs.count <= #min gcs.count run return fail

# Handler bilgilerini al (silmeden önce)
$data modify storage gcs:temp deleted_handler set from storage gcs:db handlers[{hid:$(hid)}]

# Var mı kontrol et
execute unless data storage gcs:temp deleted_handler run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler bulunamadı!","color":"red"}]
execute unless data storage gcs:temp deleted_handler run return fail

# Handler'ı sil
$data remove storage gcs:db handlers[{hid:$(hid)}]

# Metadata güncelle
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "Handler Deleted"

# Başarı mesajı
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Handler başarıyla silindi!","color":"green"}]
function gcs:admin/show_deleted_info with storage gcs:temp deleted_handler
tellraw @s ""

# Yeni durum
execute store result score #current gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Kalan Handler: ","color":"gray"},{"score":{"name":"#current","objective":"gcs.count"},"color":"aqua"},{"text":"/19","color":"dark_gray"}]
tellraw @s ""

# Temizle
data remove storage gcs:temp deleted_handler
