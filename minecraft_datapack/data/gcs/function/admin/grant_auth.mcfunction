# ============================================
# GCS - Yetki Verme
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Oyuncuya yetki ver
$scoreboard players set @a[name="$(player)"] gcs.auth $(level)

# Başarı mesajı
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Yetki verildi!","color":"green"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Oyuncu: ","color":"gray"},{"text":"$(player)","color":"yellow"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Seviye: ","color":"gray"},{"text":"$(level)","color":"aqua"}]
tellraw @s ""

# Seviye açıklaması
$execute if score @a[name="$(player)",limit=1] gcs.auth matches 1 run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Seviye 1: Temel kullanıcı yetkisi","color":"gray"}]
$execute if score @a[name="$(player)",limit=1] gcs.auth matches 2 run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Seviye 2: Moderatör yetkisi","color":"gray"}]
$execute if score @a[name="$(player)",limit=1] gcs.auth matches 3 run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Seviye 3: Admin yetkisi","color":"gray"}]
tellraw @s ""

# Hedef oyuncuya bildir
$tellraw @a[name="$(player)"] ""
$tellraw @a[name="$(player)"] [{"text":"[GCS] ","color":"gold","bold":true},{"text":"Size ","color":"white"},{"text":"Seviye $(level)","color":"aqua"},{"text":" yetkisi verildi!","color":"white"}]
$tellraw @a[name="$(player)"] [{"text":"[GCS] ","color":"gold"},{"text":"Kullanım: ","color":"gray"},{"text":"/trigger gcs.ui","color":"green","clickEvent":{"action":"run_command","value":"/trigger gcs.ui"}}]
$tellraw @a[name="$(player)"] ""
