# ============================================
# GCS - Yetki Verme
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Oyuncu kontrolü
$execute unless entity @p[name=$(player),limit=1] run return 0

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Oyuncuya yetki ver
$scoreboard players set @a[name="$(player)"] gcs.auth $(level)

# Başarı mesajı
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Yetki verildi!","color":"green"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Oyuncu: ","color":"gray"},{"text":"$(player)","color":"yellow"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Seviye: ","color":"gray"},{"text":"$(level)","color":"aqua"}]
tellraw @s ""

# Hedef oyuncuya bildir (tıklanabilir buton yok)
$tellraw @a[name="$(player)"] [{"text":"[GCS] ","color":"gold","bold":true},{"text":"Size ","color":"white"},{"text":"Seviye $(level)","color":"aqua"},{"text":" yetkisi verildi! /trigger gcs.ui ile menüyü açabilirsiniz.","color":"white"}]
